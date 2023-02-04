endeavour os
===

various app installs
---
```bash
sudo pacman -S zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo pacman -S chromium
sudo pacman -S htop
sudo pacman -S awesome-terminal-fonts
sudo pacman -S celluloid
sudo pacman -S tilix
sudo pacman -S keepassxc



yay -S aur/sublime-text-4
```

ruby install instructions
---
```bash
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
rvm install 3.2.0
echo 'gem: --no-document' > ~/.gemrc
```


mount drives without authentication prompt
---
- https://forum.endeavouros.com/t/password-authentication-when-mounting-drives-in-thunar/17812/5

```bash
sudo su -
touch /etc/polkit-1/rules.d/10-udisks2.rules
nano /etc/polkit-1/rules.d/10-udisks2.rules
```

```bash
// Allow udisks2 to mount devices without authentication
// for users in the "wheel" group.
polkit.addRule(function(action, subject) {
    if ((action.id == "org.freedesktop.udisks2.filesystem-mount-system" ||
         action.id == "org.freedesktop.udisks2.filesystem-mount") &&
        subject.isInGroup("wheel")) {
        return polkit.Result.YES;
    }
});
```
