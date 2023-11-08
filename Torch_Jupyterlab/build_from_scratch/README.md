# pytorch_docker with nvidia/cuda:12.2.0-devel-ubuntu22.04

https://github.com/Tverous/pytorch-notebook

https://linux.how2shout.com/install-code-server-for-vs-code-on-ubuntu-22-04-or-20-04-lts/


https://upcloud.com/resources/tutorials/install-code-server-ubuntu-18-04

### Clean Docker

```
docker stop $(docker ps -a -q)
docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images -q)
docker volume rm $(docker volume ls -q)


```


# Pytorch jupyter notebook with base-devel with GPUs support
## Method I.  With Build Image

### build image Full

```
docker build --no-cache \
             -f base-devel.dockerfile \
             -t pytorch-notebook:base \
             .
```

### or build image Semi

```
docker build --no-cache \
             -f base-devel.dockerfile_semi \
             -t pytorch-notebook:base \
             .
```

### or build from pytorch images

```
docker build --no-cache \
             -f base-pytorch.dockerfile \
             -t pytorch-notebook:base \
             .
```


### Rename Tag

```
docker tag pytorch-notebook:base  tuchsanai/pytorch_jupyterlab_ubuntu22.04:9Nov2023
```

### Push to Docker Hub

```
docker push tuchsanai/pytorch_jupyterlab_ubuntu22.04:9Nov2023
```

### Start the container with GPUs support with password:
```
docker run --rm -it  \
           --gpus all  \
           -p 8888:8888  \
           -e JUPYTER_TOKEN=passwd  \
           pytorch-notebook:base 
```

## Method II.  With Docker Compose Up 


```
docker-compose -f docker-compose.yml up -d
```

## Method II  pull with docker hub

```
docker pull  tuchsanai/pytorch_jupyterlab_ubuntu22.04:9Nov2023
```

### With GPU

```
docker run --rm -d  \
           --gpus all  \
           -p 8888:8888  \
           -e JUPYTER_TOKEN=passwd  \
           -v ./Notebook:/app  \
            tuchsanai/pytorch_jupyterlab_ubuntu22.04:9Nov2023
```



docker 
### Without GPU

```
docker run --rm -d \
           -p 8888:8888  \
           -e JUPYTER_TOKEN=passwd  \
           -v ./Notebook:/app  \
           tuchsanai/pytorch_jupyterlab_ubuntu22.04:9Nov2023
```

