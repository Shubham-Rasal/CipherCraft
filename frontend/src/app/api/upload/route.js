import fs from 'fs';
import path from 'path';
import Papa from 'papaparse';

export async function POST(req) {

    const formData = await req.formData()
    const file = formData.get('file')

    try {
        const fileName = file.name;
        const filePath = path.join(process.cwd(), 'uploads', fileName);

        const buffer = await file.arrayBuffer();
        let byteArray = new Int8Array(buffer);

        console.log(filePath)
        await fs.promises.writeFile(filePath, byteArray, (err) => {
            if (err) throw err;
            console.log('The file has been saved!');
        })

        const fileContent = fs.readFileSync(filePath, 'utf8');

        let columnNames;
        let firstFiveRows;

        Papa.parse(fileContent, {
            header: true,
            complete: function (results) {
                const data = results.data;

                columnNames = results.meta.fields;

                firstFiveRows = data.slice(0, 5);

                console.log('Column Names:', columnNames);
                console.log('First Five Rows:', firstFiveRows);
            }
        });

        return Response.json({ message: 'file uploaded successfully',columnNames:columnNames, firstFiveRows:firstFiveRows }, { status: 200 });
    } catch (error) {
        console.error(error);
        return Response.json({ error: 'error uploading file' }, { status: 500 });
    }
}