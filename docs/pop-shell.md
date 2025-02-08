# Pop Shell

Install Pop Shell with the following command (source: https://github.com/pop-os/shell):

```
sudo dnf install gnome-shell-extension-pop-shell xprop -y
```

Sign out and log back in, once this is complete. Change the following settings from Extensions (the extension will be located under "Built-In"):

- Allow stacking with mouse: Off

Click the tray icon for Pop Shell, and change the following settings:

- Tile windows: On
- Active hint color: (right click to change) #80b9ff

Adjust the following settings in Settings > Keyboard > View and Customize Shortcuts:

- Move window to leftward monitor: `Alt+Super+H`
- Move window to lower monitor: `Alt+Super+J`
- Move window to rightward monitor: `Alt+Super+L`
- Move window to upper monitor: `Alt+Super+K`
- Move window to lower workspace: Disabled
- Move window to upper workspace: Disabled
- Home folder: Disabled
- Toggle stacking inside management mode: Disabled
- Toggle stacking mode outside management mode: Disabled
- Launch email client: Disabled
- Launch web browser: Disabled
- Launch and switch applications: Disabled

Set the following Floating Window Exceptions to personal preference:

- Floating Window Exceptions (open this window twice so that it is visible when selecting)
- Amberol
- AppImageLauncher Settings
- Bitwarden
- Calculator
- Characters
- ChatGPT
- Chess
- Clocks
- Color Picker
- dconf Editor
- Decibels
- Disk Usage Analyzer
- Disks
- Easy Effects
- Extensions
- Fonts
- Galaxy Buds Client
- Google Calendar
- Konsole
- Homebank
- Image Viewer
- Logs
- Nautilus
- NVIDIA X Server Settings
- Obsidian
- Pomodoro
- Problem Reporting
- Rhythmbox
- Settings
- Simon Thatham's Portable Puzzle Collection
- Software
- Space Cadet Pinball
- Sudoku
- System Monitor
- Text Editor
- Todoist
- Tresorit
- Tweaks
- Warble
- Virtual Machine Manager
- VLC
- zenity

If installed aside from this guide, I also recommend floating the following:

- VirtualBox

Also add Discord's Nautilus file attachment window.

## Blank Top Bar Icon

Run the following (with adjustments for paths) to replace the top bar icon with a blank icon:

```
cd /usr/share/gnome-shell/extensions/pop-shell@system76.com/icons/
sudo mv pop-shell-auto-off-symbolic.svg pop-shell-auto-off-symbolic.svg_backup
sudo mv pop-shell-auto-on-symbolic.svg pop-shell-auto-on-symbolic.svg_backup
sudo cp path/to/config/blank.svg pop-shell-auto-off-symbolic.svg
sudo cp path/to/config/blank.svg pop-shell-auto-on-symbolic.svg
```
