#FROM pytorch/pytorch:latest
FROM pytorch/pytorch:2.1.0-cuda12.1-cudnn8-devel

# Create a working directory
WORKDIR /app


# Set bash as the default shell
ENV SHELL=/bin/bash
#ENV CUDA_HOME /usr/local/cuda12.1/


# Create a working directory
WORKDIR /app


# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    wget


# Copy the requirements.txt file to the container
COPY requirements.txt  requirements.txt

# Install the packages from requirements.txt
RUN pip install -r  requirements.txt

# install jupyter lab extensions
RUN pip install \
    # https://github.com/mohirio/jupyterlab-horizon-theme
    jupyterlab-horizon-theme \
    # https://github.com/jupyterlab/jupyterlab-git
    jupyterlab-git \
    # https://github.com/jtpio/jupyterlab-system-monitor
    jupyterlab-system-monitor \
    jupyterlab_nvdashboard   \
    # Install ipykernel
    ipykernel
  

# start jupyter lab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
EXPOSE 8888

