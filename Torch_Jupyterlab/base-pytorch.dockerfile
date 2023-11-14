#FROM pytorch/pytorch:latest
FROM pytorch/pytorch:2.1.0-cuda12.1-cudnn8-devel

# Create a working directory
WORKDIR /app

# Set bash as the default shell
ENV SHELL=/bin/bash

# Set the CUDA_HOME environment variable
ENV CUDA_HOME=/usr/local/cuda-12.1

# Update PATH to include CUDA binary directory
ENV PATH=/usr/local/cuda-12.1/bin:${PATH}

# Update LD_LIBRARY_PATH to include CUDA library directory
ENV LD_LIBRARY_PATH=/usr/local/cuda-12.1/lib64:${LD_LIBRARY_PATH}

# Install system dependencies
RUN apt-get update && apt-get install -y ffmpeg libsm6 libxext6 \
    git \
    wget

# Copy the requirements.txt file to the container
COPY requirements.txt requirements.txt

# Install the packages from requirements.txt
RUN pip install -r requirements.txt

# Install Jupyter Lab extensions
RUN pip install jupyterlab-horizon-theme \
    jupyterlab-git \
    jupyterlab-system-monitor \
    jupyterlab_nvdashboard \
    ipykernel

# Start Jupyter Lab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]

# Expose port for Jupyter Lab
EXPOSE 8888
