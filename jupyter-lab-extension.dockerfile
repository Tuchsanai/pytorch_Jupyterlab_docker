FROM tverous/pytorch-notebook


# Copy the contents of the local directory into the container at /app

# Copy the requirements.txt file to the container
COPY requirements.txt /tmp/requirements.txt

# Install the packages from requirements.txt
RUN pip install -r /tmp/requirements.txt

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





CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
EXPOSE 8888