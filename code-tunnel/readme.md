https://code.visualstudio.com/docs/remote/tunnels
https://github.com/microsoft/vscode-remote-release/issues/8908


```
curl -Lk 'https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64' --output vscode_cli.tar.gz
tar -xf vscode_cli.tar.gz


./code tunnel   --accept-server-license-terms  --random-name  user login --provider github

```


