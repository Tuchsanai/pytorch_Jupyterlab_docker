# pytorch_docker

https://github.com/Tverous/pytorch-notebook


## Pytorch jupyter notebook with base

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


## Pytorch jupyter notebook with base