

## Installation Docker and Docker Compose on Ubuntu 22.04Steps

1. Open your terminal and type the following command to create a new shell script file using the vi editor:

    ```bash
    vi install_docker_docker-compose.sh
    ```

2. Press `i` to go into insert mode, then copy and paste the following shell script code into the editor:

```
#!/bin/bash

# Update Ubuntu Package List
sudo apt update && sudo apt upgrade -y

# Install Common required packages or tools
sudo apt install -y ca-certificates curl gnupg lsb-release

# Add Docker’s GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Add the official Docker repository
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the package list again
sudo apt update

# Install Docker CE and other tools
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Check Docker version
docker -v

# Check Docker service status
systemctl status docker --no-pager -l

# Add your Ubuntu user to the Docker group
sudo usermod -aG docker $USER

# Reload the shell session
newgrp docker

# Test Docker by installing an image
docker run hello-world

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Verify Docker Installation
docker --version
# Verify Docker Compose Installation
docker-compose --version



```


3. Press ESC to exit insert mode.

4. Type :wq and press Enter to save the file and exit the vi editor.

5. Give the script executable permissions:

    ```bash
    chmod +x install_docker_docker-compose.sh
    ```

6. Run the script as a superuser:

```
sudo ./install_docker_docker-compose.sh
```

## Installing Nvidia Drivers for Machine Learning
#####  Ref : https://blog.roboflow.com/nvidia-docker-vscode-pytorch/ 
#####  https://www.linuxcapable.com/install-nvidia-drivers-on-ubuntu-linux/



1. To manually install the drivers, go to the official driver page https://www.nvidia.com/download/index.aspx . 


```
wget  "https://us.download.nvidia.com/tesla/440.95.01/NVIDIA-Linux-x86_64-440.95.01.run"
```

2. Once you have downloaded it, you can run the installer:

```
sudo chmod +x ./NVIDIA-Linux-x86_64-440.95.01.run
sudo ./NVIDIA-Linux-x86_64-440.95.01.run
```

3.  Follow the installation steps. Reboot and you should be able to run 

```
nvidia-smi
```
the output should look similar to: