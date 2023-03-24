# VSCodium

Install VSCodium with the following commands in terminal:

```
sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h" | sudo tee -a /etc/yum.repos.d/vscodium.repo
sudo dnf install codium
```

Click "Mark as done", then disable "Show welcome page on startup" on the new page.

Change the following settings:

- Text Editor
  - Font
    - Font Family: Insert `'SF Mono', ` at the beginning after following the instructions in `sf-font.md`
    - Font Size: 12
    - Terminal > Integrated: Font Family: 'SF Mono'
     Terminal > Integrated: Font Size: 13
  - Formatting
    - Format On Paste: On
    - Format On Save: On
  - Minimap
    - Render Characters: Off
    - Show Slider: Always
    - Side: left
    - Size: fill
- Workbench
  - Appearance
    - Side Bar: Location: right
- Window
  - Auto Detect Color Scheme: On

Install the GitHub Theme extension by GitHub, and change the following settings:

- Workbench
  - Appearance
    - Color Theme: GitHub Light Default
    - Preferred Dark Color Theme: GitHub Dark Default
    - Preferred High Contrast Color Theme: GitHub Dark High Contrast
    - Preferred High Contrast Light Color Theme: GitHub Light High Contrast
    - Preferred Light Color Theme: GitHub Light Default

Install Material Icon Theme by PKief, and change the following settings:

- Workbench
  - Appearance
    - Icon Theme: Material Icon Theme

Install the Vim extension by vscodevim, Error Lens by usernamehw, Python by ms-python, clangd by llvm-vs-code-extensions (install clangd when propted; you may have to open a .cpp file first), Bash IDE by mads-hartmann, and ShellCheck by timonwong.

Select View from the top bar, and under Appearance, disable the Menu Bar.
