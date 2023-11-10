
FROM pytorch/pytorch:latest

# Set bash as the default shell
ENV SHELL=/bin/bash

# Create a working directory
WORKDIR /app


# Install system dependencies

FROM pytorch/pytorch:latest

# Set bash as the default shell
ENV SHELL=/bin/bash

# Create a working directory
WORKDIR /app


# Install system dependencies
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
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