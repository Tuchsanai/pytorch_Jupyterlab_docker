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

