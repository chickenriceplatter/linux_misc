pop os
===

install gnome tweaks
---
```bash
sudo apt install gnome-tweaks
```

install zsh
---
```bash
sudo apt update
sudo apt install zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh
```

install ruby
---
```bash
sudo apt update
sudo apt install build-essential
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
rvm install 3.2.2
```

install node
---
```bash
sudo apt install npm
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
nvm install 17.9.0
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
