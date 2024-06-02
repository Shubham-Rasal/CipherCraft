#!/bin/bash

# Check if the required parameters are provided
if [ "$#" -ne 4 ]; then
    echo "Usage: $0 <python-file> <dockerhub-repo> <dataset-url> <requirements-file>"
    exit 1
fi

PYTHON_FILE=$1
DOCKER_REPO=$2
DATASET_URL=$3
REQUIREMENTS_FILE=$4

# Check if the Python file exists
if [ ! -f "$PYTHON_FILE" ]; then
    echo "Error: Python file '$PYTHON_FILE' does not exist."
    exit 1
fi

# Check if the requirements file exists
if [ ! -f "$REQUIREMENTS_FILE" ]; then
    echo "Error: Requirements file '$REQUIREMENTS_FILE' does not exist."
    exit 1
fi

# Extract the base name of the Python file without the extension
PYTHON_FILE_BASENAME=$(basename "$PYTHON_FILE" .py)

# Prompt for Docker Hub login if not already logged in
if ! docker info > /dev/null 2>&1; then
    echo "Docker login is required. Please enter your Docker Hub credentials."
    docker login
    if [ $? -ne 0 ]; then
        echo "Docker login failed. Exiting."
        exit 1
    fi
fi

# Create a temporary directory for the Docker build context
BUILD_CONTEXT=$(mktemp -d)
trap 'rm -rf "$BUILD_CONTEXT"' EXIT

# Copy the Python file and requirements file to the build context
cp "$PYTHON_FILE" "$BUILD_CONTEXT/"
cp "$REQUIREMENTS_FILE" "$BUILD_CONTEXT/"

# Create a Dockerfile in the build context
cat > "$BUILD_CONTEXT/Dockerfile" <<EOF
# Use the official Python image from the Docker Hub
FROM python:3.11.0

# Set the working directory
# WORKDIR /app

# Copy the Python script and requirements file into the container
COPY $(basename "$REQUIREMENTS_FILE") .

# Install Python dependencies
RUN pip install --no-cache-dir -r $(basename "$REQUIREMENTS_FILE")

COPY $PYTHON_FILE_BASENAME.py .

#entrypoint
ENTRYPOINT ["python", "$PYTHON_FILE_BASENAME.py"]

# Run the Python script with the dataset URL as an argument
CMD ["$DATASET_URL"]
EOF

# Build the Docker image
IMAGE_NAME="${DOCKER_REPO}:${PYTHON_FILE_BASENAME}"
docker build -t "$IMAGE_NAME" "$BUILD_CONTEXT"

# Push the Docker image to the Docker Hub
docker push "$IMAGE_NAME"

# Output the image name
echo "Docker image has been pushed to Docker Hub: $IMAGE_NAME"
