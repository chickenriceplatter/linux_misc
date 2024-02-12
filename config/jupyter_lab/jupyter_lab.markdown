generate config file (located at ~/.jupyter/jupyter_lab_config.py
---
```bash
jupyter lab --generate-config
```

open jupyter lab in incognito (add to jupyter_lab_config.py)
---
```
import webbrowser as wb
jUrl = 'http://localhost:8888' #Default jupyter host
incognito_path = '/usr/bin/chromium-browser %s --incognito --start-maximized --new-window'
wb.get(incognito_path).open_new(jUrl)

c.ExtensionApp.open_browser = False
```
