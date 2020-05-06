install apps
===

fix broken installs (if an installation fails)
---
```bash
sudo apt --fix-broken install
```

zsh & oh-my-zsh
---
```bash
sudo apt update
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh
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

nvidia driver
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

chromium browser
---
```bash
sudo apt install chromium-browser
```

steam installer
---
```bash
sudo apt install steam-installer
```

vlc
---
```bash
sudo add-apt-repository ppa:videolan/stable-daily
sudo apt update
sudo apt install vlc
```

nautilus-mediainfo
---
```bash
sudo add-apt-repository ppa:caldas-lopes/ppa
sudo apt update
sudo apt install nautilus-mediainfo
```

video thumbnails
---
```bash
sudo apt install ffmpegthumbnailer
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
sudo apt install okular
```

gdmap (graphical disk map)
---
```bash
sudo apt install gdmap
```

psensor (hardware usage and temperatures)
---
```bash
sudo apt install psensor
```
