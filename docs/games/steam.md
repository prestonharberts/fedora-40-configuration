# Steam

Install Steam by Valve Corporation from Software. Also, open Terminal and run `sudo dnf install steam-devices` to install steam-devices, used to resolve issues with gamepads. Change the following settings:

- In-Game
  - The Steam Overlay
    - Enable the Steam Overlay while in-game: Off
- Interface
  - Select which Steam window appears when the program starts: Library
  - Notify me about additions or changes to my games, new releases, and upcoming releases: Off
- Library
  - Low Bandwidth Mode: On
  - Low Performance Mode: On
  - Show game icons in the left column: Off
- Remote Play
  - Enable Remote Play: Off
- Controller
  - General controller settings
    - PlayStation Configuration Support: On
    - Xbox Configuration Support: On
    - Switch Configuration Support: On
    - Use Nintendo Button Layout: Off
    - Generic Gamepad Configuration Support: On

Collapse all collections by right-clicking on one, and selecting "Collapse all collections".

Add `gamemoderun %command% prime-run %command%` to Properties > General > Launch Options for demanding games.

Run the following to make any installed games into shortcuts located in `~/Desktop/`:

```
python -m ensurepip --upgrade
python3 -m pip install --user pillow vdf steam
git clone https://github.com/gasinvein/steam-desktop-updater
./steam_desktop_updater.py ~/.var/app/com.valvesoftware.Steam/data/Steam
```
