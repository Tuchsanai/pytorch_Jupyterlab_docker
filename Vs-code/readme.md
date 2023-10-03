docker run -d \
  --name=code-server \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -e PASSWORD=password `#optional` \
  -p 8443:8443 \
  -v ./codedata:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/code-server:latest