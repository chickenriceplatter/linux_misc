#!/bin/bash

echo "add fonts"
mkdir -p /home/dave/.fonts/
cp $HOME/linux_misc/files/fonts/monaco_linux.ttf $HOME/.fonts/
sudo fc-cache -fv

echo "add zsh theme"
rm -f $HOME/.oh-my-zsh/themes/dave.zsh-theme
cp $HOME/dotfiles/dave.zsh-theme $HOME/.oh-my-zsh/themes/dave.zsh-theme
