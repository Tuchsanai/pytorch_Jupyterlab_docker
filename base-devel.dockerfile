# pull from devel image instead of base
FROM nvidia/cuda:11.7.1-devel-ubuntu22.04

# Set bash as the default shell
ENV SHELL=/bin/bash

# Create a working directory
WORKDIR /app/

# Build with some basic utilities
RUN apt-get update && apt-get install -y \
    python3-pip \
    apt-utils \
    vim \
    git

# alias python='python3'
RUN ln -s /usr/bin/python3 /usr/bin/python


# install jupyter lab extensions
RUN pip install \
    # https://github.com/mohirio/jupyterlab-horizon-theme
    jupyterlab-horizon-theme \
    # https://github.com/jupyterlab/jupyterlab-git
    jupyterlab-git \
    # https://github.com/jupyter-lsp/jupyterlab-lsp
    jupyterlab-lsp \
    'python-lsp-server[all]' \
    # https://github.com/jtpio/jupyterlab-system-monitor
    jupyterlab-system-monitor

# build with some basic python packages
RUN pip install \
    numpy \
    torch \
    torchvision\ 
    torchaudio 
  

# start jupyter lab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
EXPOSE 8888