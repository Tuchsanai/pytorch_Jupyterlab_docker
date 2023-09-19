
# Install docker 


* Open Terminal: Open a terminal window on your Ubuntu 22.04 machine.


```
sudo vi install_docker_ubuntu_2204.sh 
```

```
#!/bin/bash

# Update package list
echo "Updating package list..."
sudo apt update

# Install prerequisites
echo "Installing prerequisites..."
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker GPG key
echo "Adding Docker GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository
echo "Adding Docker repository..."
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update package list again
echo "Updating package list again..."
sudo apt update

# Install Docker
echo "Installing Docker..."
sudo apt install -y docker-ce

# Verify Docker installation
echo "Verifying Docker installation..."
sudo systemctl status docker --no-pager

# Add user to Docker group (optional)
echo "Adding current user to Docker group..."
sudo usermod -aG docker ${USER}

echo "Installation complete. You may need to log out and log back in for changes to take effect."

```



# Install docker compose

To install Docker Compose, you can download it from the Docker's GitHub repository. First, check the latest release of Docker Compose and replace the 1.29.2 in the command below with the latest version:
https://github.com/docker/compose/releases


```
sudo curl -L "https://github.com/docker/compose/releases/download/v2.21.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

```

```
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

```

## Docker-compose Vscode-Pytorch
## Docker-compose Jupyterlab-Pytorch
