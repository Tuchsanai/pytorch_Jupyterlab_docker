# pytorch_docker with nvidia/cuda:12.2.0-devel-ubuntu22.04

https://github.com/Tverous/pytorch-notebook

https://linux.how2shout.com/install-code-server-for-vs-code-on-ubuntu-22-04-or-20-04-lts/


https://upcloud.com/resources/tutorials/install-code-server-ubuntu-18-04

## pull with docker hub

```
docker pull tuchsanai/pytorch_jupyterlab_ubuntu22.04:19sep2023
```

### With GPU

```
docker run --rm -d  \
           --gpus all  \
           -p 8888:8888  \
           -e JUPYTER_TOKEN=passwd  \
           -v ./Notebook:/app  \
            tuchsanai/pytorch_jupyterlab_ubuntu22.04:19sep2023
```



docker 
### Without GPU

```
docker run --rm -d \
           -p 8888:8888  \
           -e JUPYTER_TOKEN=passwd  \
           -v ./Notebook:/app  \
           tuchsanai/pytorch_jupyterlab_ubuntu22.04:19sep2023
```

