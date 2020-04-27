create boot drive
===
- download iso from ubuntu

gui
---
search for
```bash
startup disk creator
```

![startup_disk_creator](./startup_disk_creator.png)

command line
---
```bash
sudo dd bs=4M if=ubuntu-18.04.1-desktop-amd64.iso of=/dev/sdc1 conv=fdatasync
```