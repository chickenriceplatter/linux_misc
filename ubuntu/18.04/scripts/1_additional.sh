#!/bin/bash

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

echo "install xclip"
sudo apt install xclip

echo "install ubuntu-restricted-extras"
# decline eula for ms fonts
sudo apt -y install ubuntu-restricted-extras

echo "install oh-my-zsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
