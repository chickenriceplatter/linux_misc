sublime settings
===

install package
---
```
control + shift + p
Package Control: Install Package
```

packages to install
---

### theme
- soda
- http://buymeasoda.github.io/soda-theme/

### color theme
- materialize
- https://packagecontrol.io/packages/Materialize

### file icons
- a file icon
- https://github.com/SublimeText/AFileIcon

### git diff
- gitgutter
- https://github.com/jisaacks/GitGutter


add to .zshrc
---
```bash
# launch sublime text in terminal
alias subl="/opt/sublime_text/sublime_text"
alias s="/opt/sublime_text/sublime_text"
```

config files location
---
```bash
~/.config/sublime-text/Packages/User/Preferences.sublime-settings
~/.config/sublime-text/Packages/User/Default\ \(Linux\).sublime-keymap
```

```bash
cp /home/dave/.config/sublime-text/Packages/User/Preferences.sublime-settings /home/dave/linux_misc/config/sublime_text/sublime_settings.json
cp /home/dave/.config/sublime-text/Packages/User/Default\ \(Linux\).sublime-keymap /home/dave/linux_misc/config/sublime_text/sublime_keymap.json
```


```bash
cp /home/dave/linux_misc/config/sublime_text/sublime_settings.json /home/dave/.config/sublime-text/Packages/User/Preferences.sublime-settings
cp /home/dave/linux_misc/config/sublime_text/sublime_keymap.json /home/dave/.config/sublime-text/Packages/User/Default\ \(Linux\).sublime-keymap
```
