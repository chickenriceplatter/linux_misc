endeavour os
===

show aur packages installed
---
```bash
pacman -Qm
```

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

sudo pacman -Syy imagemagick

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

node install instructions
---
```bash
sudo pacman -S npm
```
add `[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh` to .zshrc
```bash
nvm install 17.9 # specify node version
```

wkhtmltox install
---
download from: https://wkhtmltopdf.org/downloads.html
```bash
tar -xf wkhtmltox-0.12.6-3.archlinux-x86_64.pkg.tar.xz
add wkhtmltox bin to PATH
```

openssl-1.1.1 install (dependency for wkhtmltox)
---
https://stackoverflow.com/questions/72133316/libssl-so-1-1-cannot-open-shared-object-file-no-such-file-or-directory
```bash
$ mkdir $HOME/opt && cd $HOME/opt
$ wget https://www.openssl.org/source/openssl-1.1.1o.tar.gz
$ tar -zxvf openssl-1.1.1o.tar.gz
$ cd openssl-1.1.1o
$ ./config && make && make test
$ mkdir $HOME/opt/lib
$ mv $HOME/opt/openssl-1.1.1o/libcrypto.so.1.1 $HOME/opt/lib/
$ mv $HOME/opt/openssl-1.1.1o/libssl.so.1.1 $HOME/opt/lib/
```
add `export LD_LIBRARY_PATH=$HOME/opt/lib:$LD_LIBRARY_PATH` to .zshrc





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

change icons
===
replace icons
---
```bash
sudo mv tilix.svg /usr/share/icons/Mkos-Big-Sur/128x128/apps
```

use icon at different location
```
https://askubuntu.com/questions/1195208/how-do-i-change-the-show-application-logo-with-an-icon
https://martin.hoppenheit.info/blog/2016/where-to-put-application-icons-on-linux/
