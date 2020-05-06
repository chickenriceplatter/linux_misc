configure appearance
===

install vanilla gnome
---
```bash
sudo apt install gnome-session
sudo update-alternatives --config gdm3.css
```
- select option number with gnome-shell.css

```bash
sudo apt install vanilla-gnome-desktop
reboot
```
- on login screen, click gear icon and select 'GNOME on Xorg'

uninstall dock
---
```bash
sudo apt remove gnome-shell-extension-ubuntu-dock
```

mac theme instructions
---
https://www.noobslab.com/2018/08/macbuntu-1804-transformation-pack-ready.html

themes, icons and cursors
---
```bash
sudo add-apt-repository ppa:noobslab/macbuntu
sudo apt-get update
sudo apt-get install macbuntu-os-icons-v1804
sudo apt-get install macbuntu-os-ithemes-v1804
```

remove themes
---
```bash
sudo apt-get remove macbuntu-os-icons-v1804 macbuntu-os-ithemes-v1804
```

slingscold (launchpad)
---
```bash
sudo add-apt-repository ppa:noobslab/macbuntu
sudo apt-get update
sudo apt-get install slingscold
```

tweaks settings
---
![enable_shell_themes](./enable_shell_themes.png)
![themes](./themes.png)
![fonts](./fonts.png)

misc
===

dump and load gnome config
---
```bash
dconf dump / > full_backup
dconf load / < full_backup
```

install fonts
---
```bash
copy ttf and otf or folder of fonts into /usr/share/fonts/, ~/.local/share/fonts/, or ~/.fonts/
sudo fc-cache -fv
```

install icons
---
```bash
copy icons into /usr/share/icons/, ~/.local/share/icons/, or ~/.icons/
```

install themes
---
```bash
copy themes into /usr/share/themes, ~/.local/share/themes/, or ~/.themes/
```

manually edit ubuntu theme colors
---
```bash
open /usr/share/gnome-shell/theme/ubuntu.css
#E95420 (ubuntu orange)
```

install gnome-shell_extensions
---
```bash
sudo apt install gnome-shell-extensions
```
