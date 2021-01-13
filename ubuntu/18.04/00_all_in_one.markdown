fresh install instructions
===

install ubuntu
---
- insert usb boot drive
- turn on computer and press F2/Del to change boot priority to usb
- follow instructions on boot drive


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

nvidia driver
---
```bash
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo ubuntu-drivers devices
sudo ubuntu-drivers autoinstall
reboot
```

zsh & oh-my-zsh
---
```bash
sudo apt update
sudo apt install zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh
```

chromium browser
---
```bash
sudo apt install chromium-browser
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

psensor (hardware usage and temperatures)
---
```bash
sudo apt install psensor
```

install vanilla gnome
---
```bash
sudo apt install gnome-session
sudo update-alternatives --config gdm3.css
```
- select option number with gnome-shell.css

```bash
sudo apt install vanilla-gnome-desktop
reboot
```
- on login screen, click gear icon and select 'GNOME on Xorg'

uninstall dock
---
```bash
sudo apt remove gnome-shell-extension-ubuntu-dock
```

themes, icons and cursors
---
```bash
sudo add-apt-repository ppa:noobslab/macbuntu
sudo apt-get update
sudo apt-get install macbuntu-os-icons-v1804
sudo apt-get install macbuntu-os-ithemes-v1804
```

slingscold (launchpad)
---
```bash
sudo apt-get install slingscold
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

clone this repo
---
```bash
cd ~
git clone https://github.com/chickenriceplatter/linux_misc.git
```

add fonts
---
```bash
mkdir -p /home/dave/.fonts/
cp /home/dave/linux_misc/files/fonts/monaco_linux.ttf /home/dave/.fonts/
sudo fc-cache -fv
```

add zsh theme
---
```bash
cp /home/dave/linux_misc/config/zsh/dave.zsh-theme /home/dave/.oh-my-zsh/themes
```

replace .zshrc
---
```bash
rm /home/dave/.zshrc
cp /home/dave/linux_misc/config/zsh/zshrc /home/dave/.zshrc
```

load gnome config
---
```bash
cd /home/dave/linux_misc/config/gnome/
dconf load / < gnome_config
```

load sublime settings
---
```bash
cp /home/dave/linux_misc/config/sublime_text/sublime-settings-user.json /home/dave/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
```

