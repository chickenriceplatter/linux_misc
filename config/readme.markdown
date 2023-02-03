dconf dump commands
===

all gnome config
---
```bash
dconf dump / > full_backup
dconf load / < full_backup
```

gnome-termial
---
```bash
dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf
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
