#!/bin/bash

echo "install zsh"
sudo apt update
sudo apt -y install zsh

echo "install chromium"
sudo apt -y install chromium-browser

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
