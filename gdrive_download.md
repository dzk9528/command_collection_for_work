# Google Drive Download

1. use gshell to download folder from google drive with out zip it

```shell
sudo apt-get install gshell
```

2. configure every time and delete ~/.gdrive/token_v2.json every time

3. gshell can download folder from google drive

```shell
sudo gshell init

gshell download --with-id 1C96RTSEG6ofRRuRHWjgw-afLZPokLdhC --recursive
```