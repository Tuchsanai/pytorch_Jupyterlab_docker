# pytorch_docker

https://github.com/Tverous/pytorch-notebook


# build image

```
docker build -f base-devel.dockerfile \
             -t mypytorch/pytorch-notebook:extension \
             .
```
# Start the container with GPUs support:
```
docker run --rm -it  \
           --gpus all  \
           -p 8888:8888  \
           -e JUPYTER_TOKEN=passwd  \
           mypytorch/pytorch-notebook:extension
```