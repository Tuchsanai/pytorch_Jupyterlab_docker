# pytorch_docker

https://github.com/Tverous/pytorch-notebook

### Clean Docker

```
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
docker volume rm $(docker volume ls -q)


```


## Pytorch jupyter notebook with base-devel with GPUs support

### build image

```
docker build --no-cache \
             -f base-devel.dockerfile \
             -t mypytorch/pytorch-notebook:base \
             .
```
### Start the container with GPUs support:
```
docker run --rm -it  \
           --gpus all  \
           -p 8888:8888  \
           -e JUPYTER_TOKEN=passwd  \
           mypytorch/pytorch-notebook:base
```


## Pytorch jupyter notebook with tverous/pytorch-notebook with GPUs support

docker build --no-cache \
             -f tverous-extension.dockerfile \
             -t tverous/pytorch-notebook:extension \
             .

``
docker run --rm -it  \
           --gpus all  \
           -p 8888:8888  \
           -e JUPYTER_TOKEN=passwd  \
           tverous/pytorch-notebook:extension
```