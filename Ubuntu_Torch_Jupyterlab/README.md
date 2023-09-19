# pytorch_docker

https://github.com/Tverous/pytorch-notebook

https://linux.how2shout.com/install-code-server-for-vs-code-on-ubuntu-22-04-or-20-04-lts/


https://upcloud.com/resources/tutorials/install-code-server-ubuntu-18-04

### Clean Docker

```
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
docker volume rm $(docker volume ls -q)


```


# Pytorch jupyter notebook with base-devel with GPUs support
## Method I.  With Build Image

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

## Method II.  With Docker Compose Up 

docker-compose up

```
docker-compose up . -d 
```