gnome theme tips
---
https://www.addictivetips.com/ubuntu-linux-tips/back-up-the-gnome-shell-desktop-settings-linux/

dump and load gnome config
---
```bash
dconf dump / > full_backup
dconf load / < full_backup
```

set default cursor icons
---
```bash
/usr/share/icons/default/index.theme

change to

[Icon Theme]
Inherits=OSX-ElCap
```

change login background picture
---
```bash
/usr/share/gnome-shell/theme/ubuntu.css

#lockDialogGroup {
  background: #2c001e url(file:///home/dave/Pictures/picture.jpg);
  background-repeat: no-repeat;}
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
![gnome appearance 2](./appearance_2.png)
![gnome fonts settings](./fonts.png)
![chromium shortcut](./launch_chromium.png)
![chromium 2 shortcut](./launch_chromium_2.png)
![nautilus shortcut](./launch_nautilus.png)
![terminal shortcut](./launch_terminal.png)
![search and minimize all windows shortcut](./search_and_minimize_all_windows.png)
