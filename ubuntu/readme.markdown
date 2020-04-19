ubuntu 18.04
===

create usb boot
---
```bash
sudo dd bs=4M if=ubuntu-18.04.1-desktop-amd64.iso of=/dev/sdc1 conv=fdatasync
```

fix broken installs
---
```bash
sudo apt --fix-broken install
```

git
---
```bash
sudo apt install git
```

sublime-text
---
```bash
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt update
sudo apt install sublime-text

alias subl="/opt/sublime_text/sublime_text"
```

chromium
---
```bash
sudo apt install chromium-browser
```

install nvidia driver
---
```bash
lspci -k | grep -EA3 'VGA|3D|Display'
sudo lshw -c display
sudo lshw -c video
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo ubuntu-drivers devices
sudo ubuntu-drivers autoinstall
poweroff
sudo lshw -c display
nvidia-smi

sudo apt install nvidia-cuda-toolkit
which nvcc
```

uninstall dock
---
```bash
sudo apt remove gnome-shell-extension-ubuntu-dock
```

install vanilla gnome
---
```bash
sudo apt install vanilla-gnome-desktop
```

vlc
---
```bash
sudo snap install vlc
```

steam installer
---
```bash
sudo apt install steam-installer
```

zsh
---
```bash
sudo apt update
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh
```

anaconda
---
```bash
download .sh file

chmod +x Anaconda3-2020.02-Linux-x86_64.sh
./Anaconda3-2020.02-Linux-x86_64.sh
```

keepassxc
---
```bash
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt update
sudo apt install keepassxc
```

okular (pdf viewer)
---
```bash
sudo snap install okular
```