# Steam

Install Steam by running the following:

```
sudo flatpak install flathub com.valvesoftware.Steam -y
```

Change the following settings:

- Notifications
  - Notifications
    - I receive a new item in my inventory: Off
    - There's a major sale
  - Chat Noifications
    - When a friend joins a game: Off; Off
    - Group events and announcements: Off; Off
    - Flash window when I receive a chat message: Never
- Interface
  - Start Up Location: Library
  - Notify me about additions or changes to my games, new releases, and upcoming releases: Off
- In-Game
  - The Steam Overlay
    - Enable the Steam Overlay while in-game: Off
    - Web browser home page: https://www.duckduckgo.com (make sure the s is present)
    - Toolbar Preferences
      - Achievements: Off
      - Guides: Off
      - Discussions: Off
      - DLC: Off
- Library
  - Low Bandwidth Mode: On
  - Low Performance Mode: On
  - Disable Community Content: On
  - Show game icons in the left column: Off
  - Ready to Play should include streamable games: Off
- Controller
  - General controller settings
    - PlayStation Configuration Support: On
    - Xbox Configuration Support: On
    - Switch Configuration Support: On
    - Use Nintendo Button Layout: Off
    - Generic Gamepad Configuration Support: On
- Remote Play
  - Enable Remote Play: Off

Collapse all collections by right-clicking on one, and selecting "Collapse all collections".

Add `gamemoderun %command% prime-run %command%` to Properties > General > Launch Options for demanding games.

Run the following to make any installed games into shortcuts located in `~/Desktop/`:

```
python -m ensurepip --upgrade
python3 -m pip install --user pillow vdf steam
git clone https://github.com/gasinvein/steam-desktop-updater
./steam_desktop_updater.py ~/.var/app/com.valvesoftware.Steam/data/Steam
```
