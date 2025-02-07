# Steam

Run the following to install Steam and it's utility Gamescope:

```
sudo dnf install steam gamescope -y
```

Remove all Steam, Proton, and game shortcuts from `~/.local/share/applications/` and use the GNOME extension Custom Command Toggle combined with my Bash scripts to launch Steam using Gamescope. Info on how to set this up is in my `gnome-extensions.md`.

Change the following settings:

- Notifications
  - Show Notification Toasts: Never
  - Play a sound when a notification toast is displayed: Off
- Interface
  - Start Up Location: Library
  - Notify me about additions or changes to my games, new releases, and upcoming releases: Off
  - Enable context menu focus compatibility mode: On
- Library
  - Low Bandwidth Mode: On
  - Low Performance Mode: On
  - Disable Community Content: On
  - Ready to Play should include streamable games: Off
- In Game
  - The Steam Overlay
    - Enable the Steam Overlay while in-game: On
- Compatibility
  - Enable Steam Play for all other titles: On
  - Run other titles with: Proton Experimental
- Controller
  - Enable Steam Input for Xbox controllers: On
  - PlayStation Controller Support: Enabled
  - Enable Steam Input for Switch Pro controllers
  - Enable Steam Input for generic controllers
- Remote Play
  - Enable Remote Play: Off

Run the following to fix an issue with Gamescope:

```
setcap 'CAP_SYS_NICE=eip' $(which gamescope)
```
