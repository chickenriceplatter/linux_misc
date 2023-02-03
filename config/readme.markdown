dconf dump commands
===

all gnome config
---
dconf dump / > full_backup
dconf load / < full_backup

gnome-termial
---
dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf

keyboard shortcuts
---
dconf dump / | sed -n '/\[org.gnome.settings-daemon.plugins.media-keys/,/^$/p' > keyboard-shortcuts.conf
dconf load / < keyboard-shortcuts.conf

tilix
---
dconf dump /com/gexperts/Tilix/ > tilix.dconf
dconf load /com/gexperts/Tilix/ < tilix.dconf
