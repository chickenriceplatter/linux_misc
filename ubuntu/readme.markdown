ubuntu 18.04
===

create usb boot
---
```
sudo dd bs=4M if=ubuntu-18.04.1-desktop-amd64.iso of=/dev/sdc1 conv=fdatasync
```

uninstall dock
---
```
sudo apt remove gnome-shell-extension-ubuntu-dock
```

install vanilla gnome
---
```
sudo apt install vanilla-gnome-desktop
```
