# dconf Editor

Run the following to install dconf Editor:

```
sudo dnf install dconf-editor -y
```

Change the following settings:

- `/org/gnome/desktop/wm/keybindings/always-on-top`
  - Use default value: Off
  - Custom value: `['<Super>z']`
- `/org/gnome/desktop/wm/keybindings/move-to-center`
  - Use default value: Off
  - Custom value: `['<Super>c']`
- `/org/gnome/mutter`
  - auto-maximize: Off
  - focus-change-on-pointer-rest: Off
- `/org/gnome/nautilus/preferences`
  - show-create-link: On
- `/org/gnome/desktop/notifications/`
  - show-banners: Off
