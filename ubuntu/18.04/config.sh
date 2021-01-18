#!/bin/bash

echo "add fonts"
mkdir -p /home/dave/.fonts/
cp /home/dave/linux_misc/files/fonts/monaco_linux.ttf /home/dave/.fonts/
sudo fc-cache -fv

echo "add zsh theme"
cp /home/dave/linux_misc/config/zsh/dave.zsh-theme /home/dave/.oh-my-zsh/themes

echo "replace .zshrc"
rm -f /home/dave/.zshrc
cp /home/dave/linux_misc/config/zsh/zshrc /home/dave/.zshrc

echo "load gnome config"
cd /home/dave/linux_misc/config/gnome/
dconf load / < gnome_config

echo "load sublime text settings"
cp /home/dave/linux_misc/config/sublime_text/sublime-settings-user.json /home/dave/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
