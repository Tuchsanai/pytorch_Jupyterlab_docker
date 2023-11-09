https://grafana.com/grafana/dashboards/14574-nvidia-gpu-metrics/


```
docker run -d \
--name nvidia_smi_exporter \
--restart unless-stopped \
--device /dev/nvidiactl:/dev/nvidiactl \
--device /dev/nvidia0:/dev/nvidia0 \
-v /usr/lib/x86_64-linux-gnu/libnvidia-ml.so:/usr/lib/x86_64-linux-gnu/libnvidia-ml.so \
-v /usr/lib/x86_64-linux-gnu/libnvidia-ml.so.1:/usr/lib/x86_64-linux-gnu/libnvidia-ml.so.1 \
-v /usr/bin/nvidia-smi:/usr/bin/nvidia-smi \
-p 9835:9835 \
utkuozdemir/nvidia_gpu_exporter:1.1.0

```