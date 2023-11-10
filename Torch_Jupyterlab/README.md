### Clean Docker

```
docker stop $(docker ps -aq)  # Stop all running containers
docker rm $(docker ps -aq)    # Remove all containers
docker rmi $(docker images -q)  # Remove all images
docker volume rm $(docker volume ls -q)  # Remove all volumes

```


# Pytorch jupyter notebook with base-devel with GPUs support
## Method I.  With Build Image

### Duild image from Dockerfile




```
docker build --no-cache \
             -f base-pytorch.dockerfile \
             -t pytorch-notebook:base \
             .
```


### Rename Tag to crete version

```
docker tag pytorch-notebook:base  tuchsanai/pytorch_jupyterlab_ubuntu22.04:10Nov2023
```

```
docker tag pytorch-notebook:base  tuchsanai/pytorch_jupyterlab_ubuntu22.04:latest
```


### Push to Docker Hub

```
docker push tuchsanai/pytorch_jupyterlab_ubuntu22.04:10Nov2023
```

```
docker push tuchsanai/pytorch_jupyterlab_ubuntu22.04:latest
```


### Start the container with GPUs support with password:



### With GPU

```
docker run --rm -d  \
           --gpus all  \
           -p 8888:8888  \
           -e JUPYTER_TOKEN=passwd  \
           -v ./Notebook:/app  \
            tuchsanai/pytorch_jupyterlab_ubuntu22.04:latest
```




docker 
### Without GPU

```
docker run --rm -d \
           -p 8888:8888  \
           -e JUPYTER_TOKEN=passwd  \
           -v ./Notebook:/app  \
           tuchsanai/pytorch_jupyterlab_ubuntu22.04:latest
```

