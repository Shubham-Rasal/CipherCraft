# Use the official Python image from the Docker Hub
FROM python:3.11.0

# Install dependencies for pyenv and pyenv-virtualenv
RUN apt-get update && apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm \
    libncurses5-dev libncursesw5-dev xz-utils tk-dev \
    libffi-dev liblzma-dev python3-openssl git \
    && rm -rf /var/lib/apt/lists/*


# Install pyenv
ENV PYENV_ROOT /root/.pyenv
ENV PATH="${PATH}:${PYENV_ROOT}"
RUN echo PYENV_ROOT
RUN curl https://pyenv.run | bash

RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
RUN echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(pyenv init --path)"' >> ~/.bashrc

SHELL ["/bin/bash", "--login", "-c"]

RUN source ~/.bashrc

RUN pyenv install 3.11.0
RUN pyenv local 3.11.0
RUN pyenv virtualenv 3.11.0 my-env
# RUN pyenv activate my-env

# Set the working directory
# WORKDIR /app

# Copy the Python script and requirements file into the container
ARG PYTHON_FILE
ARG REQUIREMENTS_FILE
COPY $PYTHON_FILE .
COPY $REQUIREMENTS_FILE .

# Install Python dependencies in the virtual environment
RUN pip install --no-cache-dir -r $REQUIREMENTS_FILE

# Set the entrypoint to Python
ENTRYPOINT ["python"]

# Default command with the dataset URL argument
CMD ["${PYTHON_FILE}", "$DATASET_URL"]

# frolvlad/alpine-glibc:glibc-2.34    