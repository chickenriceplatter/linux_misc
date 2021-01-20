#!/bin/bash

echo "replace .gitconfig"
rm -f $HOME/.gitconfig
cp $HOME/dotfiles/.gitconfig $HOME/.gitconfig

echo "replace .zshrc"
rm -f $HOME/.zshrc
cp $HOME/dotfiles/.zshrc $HOME/.zshrc

echo "replace .gemrc"
rm -f $HOME/.gemrc
cp $HOME/dotfiles/.gemrc $HOME/.gemrc

echo "replace sublime text settings"
rm -f $HOME/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
cp $HOME/dotfiles/Preferences.sublime-settings $HOME/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

echo "load gnome config"
dconf load / < $HOME/dotfiles/gnome_config


