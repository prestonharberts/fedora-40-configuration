# Typora

Run the following to install Typora:

```
flatpak install io.typora.Typora -y
```

Activate your license, then change the following settings:

- Files
  - Save & Recover
    - Auto Save: On
- Editor
  - Auto Pair
    - Auto pair common Markdown syntax: On
  - Live Rendering
    - Display source for simple blocks (including heading, etc.) on focus: On
  - Default Copy Behavior
    - Copy or cut the whole lines that have cursors on them, if there is no selection when doing copy/cut: On
  - Spell Check: Disable Spell Check
- Image
  - When Insert: Copy image to custom folder: `/home/USER/Documents/typora/`
    - Apply above rules to online images
- Markdown
  - Syntax Support
    - Inline Math: On
    - Subscript: On
    - Superscript: On
    - Highlight: On
  - Smart Punctuation
    - Smart Quotes: On
    - Smart dashes: On
  - Code Fences
    - Display line numbers for code fences: On
    - Indent Size for Code: 2
    - Default Code Language: Last Used
- Appearance
  - Zoom: 120%
  - Status Bar
    - Show status bar: Off

Run the following commands to add custom CSS and hide the menu bar automatically (press `Alt` to reveal it again):

```
cp ~/path/to/configs/base.user.css ~/.var/app/io.typora.Typora/config/Typora/themes/
cp ~/path/to/configs/conf.user.json ~/.var/app/io.typora.Typora/config/Typora/conf/
```
