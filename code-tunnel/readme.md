
# Remote Tunnel with VSCode

https://code.visualstudio.com/docs/remote/tunnels
https://github.com/microsoft/vscode-remote-release/issues/8908


#  Automatic login with Github

```
curl -Lk 'https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64' --output vscode_cli.tar.gz
tar -xf vscode_cli.tar.gz
1
./code tunnel unregister
./code tunnel  user login --provider github
./code tunnel  --no-sleep --accept-server-license-terms  --random-name  
```



# General Settings
```
curl -Lk 'https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64' --output vscode_cli.tar.gz
tar -xf vscode_cli.tar.gz

./code tunnel unregister
./code tunnel --no-sleep  --accept-server-license-terms  --random-name  
```

