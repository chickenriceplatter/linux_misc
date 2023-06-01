dconf dump commands
===

all gnome config
---
```bash
dconf dump / > full_backup
dconf load / < full_backup
```

gnome-terminal conf
---
http://davidzchen.com/tech/2020/07/21/importing-and-exporting-gnome-terminal-color-schemes.html
```bash
dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profile.dconf
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profile.dconf
```

keyboard shortcuts
---
```bash
dconf dump / | sed -n '/\[org.gnome.settings-daemon.plugins.media-keys/,/^$/p' > keyboard-shortcuts.conf
dconf load / < keyboard-shortcuts.conf
```

tilix
---
```bash
dconf dump /com/gexperts/Tilix/ > tilix.dconf
dconf load /com/gexperts/Tilix/ < tilix.dconf
```


shortcuts
---
```bash
/usr/bin/nautilus
/usr/bin/gnome-terminal --geometry 91x46+0+0
chromium-browser --incognito --window-size=2560,1440 --window-position=0,0
```
