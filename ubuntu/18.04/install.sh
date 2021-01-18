#!/bin/bash

echo "install git"
sudo apt -y install git

echo "install zsh and oh-my-zsh"
sudo apt update
sudo apt -y install zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "install chromium"
sudo apt -y install chromium-browser

echo "install celluloid"
sudo apt -y install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub io.github.celluloid_player.Celluloid

echo "install nautilus mediainfo"
sudo add-apt-repository ppa:caldas-lopes/ppa
sudo apt update
sudo apt -y install nautilus-mediainfo

echo "install video thumbnails"
sudo apt -y install ffmpegthumbnailer

echo "install keepassxc"
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt update
sudo apt -y install keepassxc

echo "install psensor"
sudo apt -y install psensor

echo "install vanilla gnome"
sudo apt -y install gnome-session
sudo apt -y install vanilla-gnome-desktop

echo "uninstall dock"
sudo apt -y remove gnome-shell-extension-ubuntu-dock

echo "install mac themes and icons"
sudo add-apt-repository ppa:noobslab/macbuntu
sudo apt update
sudo apt -y install macbuntu-os-icons-v1804
sudo apt -y install macbuntu-os-ithemes-v1804

echo "install slingscold"
sudo apt -y install slingscold

echo "install sublime text"
sudo apt -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt update
sudo apt -y install sublime-text
