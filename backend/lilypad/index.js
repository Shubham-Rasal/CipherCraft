const express = require('express');
const bodyParser = require('body-parser');
const multer = require('multer');
const fs = require('fs');
const path = require('path');
const { exec } = require('child_process');
const os = require('os');
const util = require('util');
//cors
const cors = require('cors');

const execPromise = util.promisify(exec);

const app = express();
const port = 5000;

// Setup body parser for parsing JSON requests
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
//cors
app.use(cors());

// Setup multer for file uploads
const upload = multer({ dest: 'uploads/' });

// Endpoint to handle the docker build process
app.post('/build', upload.fields([
    { name: 'python-file', maxCount: 1 },
    { name: 'requirements-file', maxCount: 1 }
]), async (req, res) => {
    const { 'dockerhub-repo': dockerRepo, 'dataset-url': datasetUrl } = req.body;
    console.log(req.body, req.files)
    const pythonFile = req.files['python-file'][0];
    const requirementsFile = req.files['requirements-file'][0];

    if (!pythonFile || !requirementsFile || !dockerRepo || !datasetUrl) {
        return res.status(400).send("Missing required parameters");
    }

    const pythonFileBasename = path.basename(pythonFile.originalname, '.py');
    const buildContext = fs.mkdtempSync(path.join(os.tmpdir(), 'build-'));

    console.log("Python file:", pythonFile);
    console.log("Requirements file:", requirementsFile);

    try {
        // Copy files to build context
        console.log("Copying files to build context:", buildContext);
        fs.copyFileSync(pythonFile.path, path.join(buildContext, pythonFile.originalname));
        fs.copyFileSync(requirementsFile.path, path.join(buildContext, requirementsFile.originalname));

        // Create Dockerfile
        const dockerfileContent = `
      FROM python:3.11.0
      COPY ${requirementsFile.originalname} .
      RUN pip install --no-cache-dir -r ${requirementsFile.originalname}
      COPY ${pythonFile.originalname} .
      ENTRYPOINT ["python", "${pythonFileBasename}.py"]
      CMD ["${datasetUrl}"]
    `;

        console.log("Dockerfile content:", dockerfileContent)

        fs.writeFileSync(path.join(buildContext, 'Dockerfile'), dockerfileContent);

        const imageName = `${dockerRepo}:${pythonFileBasename}`;

        console.log("Docker image name:", imageName);

        // Build and push Docker image
        console.log("Building Docker image:", imageName);
        await execPromise(`docker build -t ${imageName} ${buildContext}`);

        console.log("Pushing Docker image:", imageName);
        await execPromise(`docker push ${imageName}`);

        res.json({ imageName });
    } catch (error) {
        console.error("Error during Docker build/push:", error);
        res.status(500).json({ error: error.message });
    } finally {
        // Cleanup build context
        fs.rmSync(buildContext, { recursive: true, force: true });
        fs.unlinkSync(pythonFile.path);
        fs.unlinkSync(requirementsFile.path);
    }
});

//health check
app.get('/health', (req, res) => {
    res.send('OK');
});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
