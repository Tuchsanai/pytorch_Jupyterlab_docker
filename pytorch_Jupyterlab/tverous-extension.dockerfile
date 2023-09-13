FROM tverous/pytorch-notebook:latest


# Copy the requirements.txt file to the container
COPY requirements.txt  requirements.txt

# Install the packages from requirements.txt
RUN pip install -r  requirements.txt

## install jupyter lab extensions
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


# Create a custom directory
RUN mkdir -p ./Workspace
WORKDIR   ./Workspace


CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
EXPOSE 8888