

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Verify Docker Installation
docker --version
# Verify Docker Compose Installation
docker-compose --version


To start the services with Docker Compose, you would run:

```
docker-compose up -d
```
