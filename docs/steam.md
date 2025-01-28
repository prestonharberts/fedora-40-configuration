# Steam

Run the following to install Steam and it's utility Gamescope:

```
sudo dnf install steam gamescope -y
```

Remove all Steam, Proton, and game shortcuts from `~/.local/share/applications/` and use the GNOME extension Custom Command Toggle combined with my Bash scripts to launch Steam using Gamescope. Info on how to set this up is in my `gnome-extensions.md`.
