gnome theme tips
---
https://www.addictivetips.com/ubuntu-linux-tips/back-up-the-gnome-shell-desktop-settings-linux/

dump and load gnome config
---
```bash
dconf dump / > full_backup
dconf load / < full_backup
```

icons
---
icons should be placed in `~/.icons` and it will show up in Tweaks under Appearance

themes
---
themes should be placed in `~/.themes` and it will show up in Tweaks under Apperance

fonts
---
to use a custom font in gnome terminal, set it as the font for the monospace text under fonts in Tweaks

terminal colors
---
https://flatuicolors.com/

![gnome appearance settings](./appearance.png)
![gnome fonts settings](./fonts.png)
