import os
import sys
import subprocess
import tempfile
import shutil

def main():
    if len(sys.argv) != 5:
        print("Usage: python script.py <python-file> <dockerhub-repo> <dataset-url> <requirements-file>")
        sys.exit(1)

    python_file, docker_repo, dataset_url, requirements_file = sys.argv[1:5]

    if not os.path.isfile(python_file):
        print(f"Error: Python file '{python_file}' does not exist.")
        sys.exit(1)

    if not os.path.isfile(requirements_file):
        print(f"Error: Requirements file '{requirements_file}' does not exist.")
        sys.exit(1)

    python_file_basename = os.path.basename(python_file).replace('.py', '')

    try:
        subprocess.run(['docker', 'info'], check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    except subprocess.CalledProcessError:
        print("Docker login is required. Please enter your Docker Hub credentials.")
        try:
            subprocess.run(['docker', 'login'], check=True)
        except subprocess.CalledProcessError:
            print("Docker login failed. Exiting.")
            sys.exit(1)

    with tempfile.TemporaryDirectory() as build_context:
        shutil.copy(python_file, build_context)
        shutil.copy(requirements_file, build_context)

        dockerfile_content = f"""
        FROM python:3.11.0
        COPY {os.path.basename(requirements_file)} .
        RUN pip install --no-cache-dir -r {os.path.basename(requirements_file)}
        COPY {python_file_basename}.py .
        ENTRYPOINT ["python", "{python_file_basename}.py"]
        CMD ["{dataset_url}"]
        """

        dockerfile_path = os.path.join(build_context, 'Dockerfile')
        with open(dockerfile_path, 'w') as dockerfile:
            dockerfile.write(dockerfile_content)

        image_name = f"{docker_repo}:{python_file_basename}"
        subprocess.run(['docker', 'build', '-t', image_name, build_context], check=True)
        subprocess.run(['docker', 'push', image_name], check=True)

        print(f"Docker image has been pushed to Docker Hub: {image_name}")

if __name__ == "__main__":
    main()
