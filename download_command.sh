# use gshell to download folder from google drive with out zip it
sudo apt-get install gshell

# configure every time and delete ~/.gdrive/token_v2.json every time
sudo gshell init

# gshell can download folder from google drive
gshell download --with-id 1C96RTSEG6ofRRuRHWjgw-afLZPokLdhC --recursive