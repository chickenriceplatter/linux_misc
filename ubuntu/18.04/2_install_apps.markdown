install apps
===

fix broken installs (if an installation fails)
---
```bash
sudo apt --fix-broken install
```

git
---
```bash
sudo apt install git
```

zsh & oh-my-zsh
---
```bash
sudo apt update
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh
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

add additional screen resolutions
---
open NVIDIA X Server Settings

1. click on 'X Server Display Configuration'.
2. click on 'Advanced...' button.
3. 'ViewPortIn' is set to new resolution.
4. 'ViewPortOut' is set to maximum screen resolution.
5. 'Panning' is set to new resolution.
6. click on 'Apply' button.
7. click 'Save to X Configuration File' button.

![add_additional_resolution](./additional_resolutions.png)


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

celluloid
---
```bash
sudo apt-get install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub io.github.celluloid_player.Celluloid
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

typora (markdown preview)
---
```bash
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt update
sudo apt install typora
```
