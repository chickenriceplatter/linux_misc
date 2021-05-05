remove snap
===
https://askubuntu.com/questions/1280707/how-to-uninstall-snap

```bash
sudo systemctl stop snapd && sudo systemctl disable snapd
sudo apt purge snapd
rm -rf ~/snap
sudo rm -rf /snap /var/snap /var/lib/snapd /var/cache/snapd /usr/lib/snapd
```

open `/etc/apt/preferences.d/no-snap.pref` and add following

```
# To install snapd, specify its version with 'apt install snapd=VERSION'
# where VERSION is the version of the snapd package you want to install.
Package: snapd
Pin: release a=*
Pin-Priority: -10
```

