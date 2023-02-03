create usb boot from iso
===
- https://linuxopsys.com/topics/make-bootable-usb-from-iso-using-linux-terminal

0. download iso
---

1. check usb path
---
```bash
$ lsblk
```

2. unmount usb
---
```bash
$ umount /dev/usb_location
```

3. create boot
---
```bash
$ dd bs=4M if=/path/to/downloaded.iso of=/dev/usb_location conv=fdatasync
```
