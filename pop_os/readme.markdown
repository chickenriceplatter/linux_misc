pop os
===

install gnome tweaks
---
```bash
sudo apt install gnome-tweaks
```

install chromium
---
```bash
sudo add-apt-repository ppa:savoury1/chromium
sudo apt update
sudo apt install chromium-browser
```

install zsh
---
```bash
sudo apt update
sudo apt install zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh
```

configure zsh
---
```bash
cp /home/dave/linux_misc/config/zsh/dave.zsh-theme /home/dave/.oh-my-zsh/themes
cp /home/dave/linux_misc/config/zsh/zshrc /home/dave/.zshrc
```

add git config
---
```bash
git config --global user.name "chickenriceplatter"
git config --global user.email chickenriceplatter@gmail.com
```

install various packages
---
```bash
sudo apt install ncal
sudo apt install tree
sudo apt install htop
sudo apt install psensor
```

config gnome terminal
---
```bash
create terminal profile
cd /home/dave/linux_misc/config/gnome
dconf load /org/gnome/terminal/legacy/profiles:/ <  gnome-terminal-profiles.dconf
```

config gnome appearance
---
```bash
mkdir -p /home/dave/.themes
mkdir -p /home/dave/.icons

cd /home/dave/linux_misc/files/icons
unzip faenza_cupertino.zip
mv faenza_cupertino /home/dave/.icons

cd /home/dave/linux_misc/files/themes
unzip gnome_osx_iv_1.4.zip
mv gnome_osx_iv_1.4 /home/dave/.themes

cd /home/dave/linux_misc/files/cursors
unzip elcap.zip
mv elcap /usr/share/icons
cd /usr/share icons
sudo chown -R root elcap
sudo nano /etc/alternatives/x-cursor-theme
change `Inherits=elcap`
```

add fonts
---
```bash
mkdir -p /home/dave/.fonts/
cp /home/dave/linux_misc/files/fonts/monaco_linux.ttf /home/dave/.fonts/
sudo fc-cache -fv
```


install sublime text
---
```bash
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt update
sudo apt install sublime-text
```

install sublime text packages
---
```bash
control + shift + p
Package Control: Install Package

soda
materialize
a file icon
gitgutter
```

load sublime text config
---
```bash
cp /home/dave/linux_misc/config/sublime_text/sublime_settings.json /home/dave/.config/sublime-text/Packages/User/Preferences.sublime-settings
cp /home/dave/linux_misc/config/sublime_text/sublime_keymap.json /home/dave/.config/sublime-text/Packages/User/Default\ \(Linux\).sublime-keymap
```

install ruby
---
```bash
sudo apt update
sudo apt install build-essential
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
rvm install 3.2.2
echo 'gem: --no-document' > ~/.gemrc
```

nautilus media info
---
```bash
sudo add-apt-repository ppa:caldas-lopes/ppa
sudo apt update
sudo apt install nautilus-mediainfo
```

video thumbnails
---
https://www.reddit.com/r/pop_os/comments/ul7nua/thumbnails_for_mp4_files_not_showing_ive_found/

```bash
sudo apt install gstreamer1.0-libav
rm -r ~/.cache/thumbnails/fail
```

install node
---
```bash
sudo apt install npm
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
nvm install 17.9.0
```
