

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



## id 
- 11074
- 1860
- 14574



## Node Exporter for Prometheus Dashboard based on 11074
## Dashboard for production env troubleshooting, 

![Alt Text](https://grafana.com/api/dashboards/15172/images/11186/image)


## Node Exporter  ID : 1860
 
![Alt Text](https://grafana.com/api/dashboards/1860/images/7994/image)


## Nvidia GPU Metrics ID: 14574

This dashboard uses the metrics exported by utkuozdemir/nvidia_gpu_exporter to provide rich visualization of various GPU stats.

![Alt Text](https://raw.githubusercontent.com/utkuozdemir/nvidia_gpu_exporter/master/grafana/dashboard.png)


