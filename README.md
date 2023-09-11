# pytorch_docker

https://github.com/Tverous/pytorch-notebook


build image

```
docker build --no-cache \
             -f jupyter-lab-extension.dockerfile \
             -t tverous/pytorch-notebook:extension \
             .
```