# VSCodium

Install VSCodium with the following commands in terminal:

```
sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h" | sudo tee -a /etc/yum.repos.d/vscodium.repo
sudo dnf install codium -y
```

Click "Mark as done", then disable "Show welcome page on startup" on the new page.

Change the following settings:

- Text Editor
  - Font
    - Font Family: Insert `'SF Mono', ` at the beginning after following the instructions in `sf-font.md`
    - Font Size: 12
  - Formatting
    - Format On Paste: On
    - Format On Save: On
  - Minimap
    - Enabled: Off
- Window
  - Auto Detect Color Scheme: On
  - Zoom Level: 1
- Features
  - Terminal
    - Integrated: Font Family: 'SF Mono'
    - Integrated: Font Size: 13

Install the Fedora GNOME light & dark themes extension by olifink, and change the following settings:

- Workbench
  - Appearance
    - Color Theme: Gnome Light (GitHub)
    - Preferred Dark Color Theme: Gnome Dark (GitHub)
    - Preferred Light Color Theme: Gnome Light (GitHub)

Install the Vim extension by vscodevim, Error Lens by usernamehw, Python by ms-python, clangd by llvm-vs-code-extensions (install clangd when propted; you may have to open a .cpp file first, in which case also press `Ctrl+Shift+P` and enter "clangd: Toggle inlay hints"), Bash IDE by mads-hartmann, and ShellCheck by timonwong.

Also install shfmt by mkhl. Then, run `go install mvdan.cc/sh/v3/cmd/gosh@latest` to install the dependency. The directory `~/go/bin/` may need to be added to your PATH if it is not already.

Select View from the top bar, and under Appearance, disable the Menu Bar.
