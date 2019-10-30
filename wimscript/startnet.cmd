wpeinit
set SERVER= targetIP

echo HTTP ISO..
httpdisk /mount 0 http://%server%/iso/rtm.iso /cd H:
start H:\setup.exe