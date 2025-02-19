# Retroarch

Run the following to install Retroarch:

```
sudo dnf install retroarch -y
cp /usr/share/applications/com.libretro.RetroArch.desktop ~/.local/share/applications/
```

Edit the `Exec` line in `~/.local/share/applications/` to be 

```
Exec=gamemodelaunch -W 1920 -H 1440 -w 320 -h 240 -M windowed -S integer -- retroarch
```

Change the following settings:

- Drivers
  - Video: vulkan
- Video
  - Output
    - GPU Index: Confirm that it is using your primary GPU
  - Synchronization
    - Max Swapchain Images: 2
  - Fullscreen Mode
    - Start in Fullscreen Mode: On
  - Windowed Mode
    - Show Window Decorations: Off
- Input
  - Menu Controls
    - Menu Swap OK and Cancel Buttons: On
    - Disable Info Button: On
    - Disable Search Button: On
  - Hotkeys
    - Menu Toggle (Controller Combo): L3 + R3
    - Slow-Motion (Hold): None
    - Rewind: None
    - Pause: `=`
    - Frame Advance: `-`
    - Volume Up: None
    - Volume Down: None
    - Shaders (Toggle): None
    - Next Shader: None
    - Previous Shader: None
    - Cheats (Toggle): None
    - Next Cheat Index: None
    - Previous Cheat Index: None
    - Fullscreen (Toggle): None
    - Show FPS (Toggle: None
    - Netplay Play/Spectate Mode (Toggle): None
    - Netplay Player Chat: None
  - RetroPad Binds
    - Port 1 Controls
      - Analog to Digital Type: Left Analog
      - B Button (Down): `k`
      - A Button (Right): `j`
      - Y Button (Left): `h`
      - X Button (Top): `l`
      - Select Button: `Right shift`
      - Start Button: `Enter`
      - L Button (Shoulder): `q`
      - R Button (Shoulder): `e`
      - L2 Button (Trigger): `f`
      - R2 Button (Trigger): `r`
      - L3 Button (Thumb): `t`
      - R3 Button (Thumb): `t`
      - Left Analog Y- (Up): `W`
      - Left Analog Y+ (Down): `S`
      - Left Analog X- (Left): `A`
      - Left Analog X+ (Right): `D`
      - Right Analog Y- (Up): None
      - Right Analog Y+ (Down): None
      - Right Analog X- (Left): None
      - Right Analog X+ (Right): None
      - Fast-Forward (Hold): None
    - Port 2 Controls
      - Analog to Digital Type: Left Analog
    - Port 3 Controls
      - Analog to Digital Type: Left Analog
    - Port 4 Controls
      - Analog to Digital Type: Left Analog
    - Port 5 Controls
      - Analog to Digital Type: Left Analog
- Saving
  - Sort Saves into Folders by Core Name: On
  - Sort Save States into Folders by Core Name: On
  - Auto Save State: On
- User Interface
  - File Browser
    - Show Hidden Files and Directories: On
    - Use Built-In Media Player: Off
    - Use Built-In Image Viewer: Off
    - Filter by Current Core: On
    - Remember Last Used Start Directory: On
  - On-Screen Display
    - On-Screen Notifications
      - Notification Visibility
        - "Load Content" Startup Notification: Off
        - Input (Autoconfig) Connection Notifications: Off
        - Cheat Code Notifications: Off
        - Patch Notifications: Off
        - Input Remap Loaded Notifications: Off
        - Config Override Loaded Notifications: Off
        - Initial Disc Restored Notifications: Off
        - Disc Control Notifications: Off
        - Save State Notifications: Off
        - Fast-Forward Notifications: Off
        - Refresh Rate Notifications: Off
        - Screenshot Notifications: Off
        - Menu-only Notifications: On
  - Menu Item Visibility
    - Quick Menu
      - Show 'Replay Controls': Off
      - Show 'Start Recording': Off
      - Show 'Start Streaming': Off
      - Show 'On-Screen Overlay': Off
      - Show 'Cheats': Off
      - Show 'Set Core Association': Off
      - Show 'Reset Core Association': Off
      - Show 'Download Thumbnails': Off
      - Show 'Information': Off
    - Settings
      - Show 'Audio': Off
      - Show 'Frame Throttle': Off
      - Show 'Recording': Off
      - Show 'Accessibility': Off
      - Show 'AI Service': Off
      - Show 'Power Management': Off
      - Show 'Achievements'
      - Show 'Logging'
    - Show 'Dump Disc': Off
    - Show 'Online Updater': On
    - Show 'Core Downloader': On
    - Show 'Information': Off
    - Show 'Help': Off
    - Show 'Images': Off
    - Show 'Videos': Off
    - Show 'Contentless Cores': Off
    - Style of Date and Time: HH:MM (AM/PM)
    - Show Battery Level: Off
    - Show Core Name: Off
  - Appearance
    - Color Theme: Brogrammer
      - Border Filler: Off
      - Shadow Effects: On
      - Switch Icons: Off
  - Pause Content When Controller Disconnects: On
  - Mouse Support: Off
  - Disable Desktop Composition: On
- Achievements
  - Achievements: On
  - Username: Enter username
  - Password: Enter password
  - Visibility
    - Startup Summary: Off
    - Unlock Notifications: Off
    - Mastery Notifications: Off
    - Active Challenge Indicators: Off
    - Progress Indicator: Off
    - Leaderboard Start Messages: Off
    - Leaderboard Submit Messages: Off
    - Leaderboard Failed Messages: Off
    - Leaderboard Trackers: Off
    - Rich Presence: Off
  - Rich Presence: Off
- User
  - Username: Enter username
- Directory
  - File Browser: ~/Games/emulation

Change the following setting after the above is complete:

- User Interface
  - Menu Item Visibility
    - Settings
      - Show 'On-Screen Display': Off

Go to the Main Menu, and select the following option:

- Configuration File
  - Save Current Configuration

Run the following in Terminal before continuing:
```
cd ~/.config/retroarch/
mkdir cores/info database/cht
cp /usr/share/libretro/assets/* assets/ -r
cp /usr/lib64/libretro/* cores/ -r
cp /usr/share/libretro/info/* cores/info/ -r
cp /usr/share/libretro/database/rdb/* database/rdb/ -r
cp /usr/share/libretro/database/cht/* database/cht/ -r
cp /usr/lib64/retroarch/filters/video/* filters/video/ -r
cp /usr/lib64/retroarch/filters/audio/* filters/audio/ -r
cp /usr/share/libretro/autoconfig/* autoconfig/ -r
```

- Directory
  - Assets: ~/.config/retroarch/assets
  - Cores: ~/.config/retroarch/cores
  - Core info: ~/.config/retroarch/cores/info
  - Databases: ~/.config/retroarch/database/rdb
  - Cheat files: ~/.config/retroarch/database/cht
  - Video filters: ~/.config/retroarch/filters/video
  - Audio filters: ~/.config/retroarch/filters/audio
  - Controller Profiles: ~/.config/retroarch/autoconfig
- Core (above Directory setting)
  - Manage Cores
    - Select and delete each core with "Delete Core"

Go to the Main Menu, and select the following option:

- Configuration File
  - Save Current Configuration

Go to Online Updater, and complete the following:

- Update Core Info Files
- Update Controller Profiles
- Update Cheats
- Update Databases
- Update Overlays
- Update GLSL Shaders

Download the following from the respective Downloader:

- Core Downloader
  - Arcade (FinalBurn Neo)
  - NEC - PC Engine / SuperGrafx / CD (Beetle PCE)
  - Nintendo - Game Boy / Color (Gambatte)
  - Nintendo - Game Boy Advance (mGBA)
  - Nintendo - NES / Famicon (Nestopia)
  - Nintendo - Nintendo 64 (ParaLLEl N64)
  - Nintendo - SNES / SFC (Snes9x)
  - Sega - MS/GG/MD/CD (Genesis Plus GX)
  - Sony - PlayStation (Beetle PSX HW)

After all this, import all content from `~/Games/emulation/`. Change the following settings:

- Playlists
  - Manage Playlists
    - Every playlist
      - Default Core: Choose respective core

Go to the Main Menu, and select the following option:

- Configuration File
  - Save Current Configuration

Run the following if you have already synced saves and playlists with Tresorit:

```
rm ~/.config/retroarch/saves/ ~/.config/retroarch/states/ ~/.config/retroarch/playlists/ -r
ln -s ~/Games/saves/retroarch/saves/ ~/.config/retroarch/
ln -s ~/Games/saves/retroarch/states/ ~/.config/retroarch/
ln -s ~/Games/saves/retroarch/playlists ~/.config/retroarch/
```

Run the following to sync saves and playlists with Tresorit for the first time:

```
mkdir ~/Games/saves/retroarch/
mv ~/.config/retroarch/saves/ ~/.config/retroarch/states/ ~/.config/retroarch/playlists/ ~/Games/sav/retroarch/
ln -s ~/Games/saves/retroarch/saves/ ~/.config/retroarch/
ln -s ~/Games/saves/retroarch/states/ ~/.config/retroarch/
ln -s ~/Games/saves/retroarch/playlists ~/.config/retroarch/
```

Move system files (BIOS, firmware, etc.) to `~/.config/retroarch/system`.

Now, continue to change core settings with games loaded in their respective core when needed. Run-Ahead frames will depend on the game loaded, so latency settings where x is the value for the game in the table below:

## Arcade (Finalburn Neo)

Change the following settings from the Quick Menu:

- Quick Menu
  - Controls
    - All ports
      - Left Bumper: Buttons 3x Punch
      - Right Bumper: Strong Punch
      - Left Trigger: Buttons 3x Kick
      - Right Trigger: Strong Kick
    - Manage Remap Files
      - Save Core Remap Files
  - Shaders
    - Video Shaders: On
    - Load: shaders_slang/
    - Shader Parameters

    - Save
      - Save Core Preset

Change the following latency settings, substituting x with the specific game's number:

- Latency
  - Run-Ahead to Reduce Latency
    - Number of Frames to Run-Ahead: x
- Overrides
  - Save Game Overrides

Street Fighter III: Third Strike: 3
Super Street Fighter 2 Turbo: 3

### Street Fighter III: Third Strike (widescreen hack)

Change the following parameters for the shader:

- Quick Menu
  - Shaders
    - Shader Parameters

    - Save
      - Save Game Preset

## Nintendo - Game Boy / Color (Gambatte)

Change the following settings from the Quick Menu:

- Quick Menu
  - Controls
    - Port 1
      - A Button (right)/Auto Circle (btn): B
      - B Button (down)/Auto Cross (btn): A
      - X Button (top)/Auto Triangle (btn): A
      - Y Button (left)/Auto Square (btn): B
    - Manage Remap Files
      - Save Core Remap Files
  - Shaders
    - Video Shaders: On
    - Load: shaders_slang/handheld/retro-tiles.slangp
    - Prepend: shaders_slangp/handheld/gbc-color.slangp (for Game Boy Color games)
    - Shader Parameters
      - Lighten Screen: 0.70 (for Game Boy Color games)
      - Tile Depth: 0.60
      - Tile Size: 0.60
    - Save
      - Save Game Preset (for every game for this core)

Change the following latency settings, substituting x with the specific game's number:

- Latency
  - Run-Ahead to Reduce Latency
    - Number of Frames to Run-Ahead: x
- Overrides
  - Save Game Overrides

Castlevania The Adventure: 2
Operation C: 1
Super Mario Land: 2
The Legend of Zelda Oracle of Ages: 2

## Nintendo - NES / Famicon (Nestopia UE)

Change the following settings from the Quick Menu:

- Change `savestate_features = "serialized"` to `savestate_features = "deterministic"` in `~/.config/retroarch/cores/info/nestopia_libretro.info`
- Quick Menu
  - Controls
    - All ports
      - A Button (right)/Auto Circle (btn): B
      - B Button (down)/Auto Cross (btn): A
      - X Button (top)/Auto Triangle (btn): A
      - Y Button (left)/Auto Square (btn): B
    - Manage Remap Files
      - Save Core Remap Files
  - Shaders
    - Video Shaders: On
    - Load: shaders_slang/ntsc/ntsc-256px-composite.slangp
    - Prepend: shaders_slang/crt/crt-royale.slangp
    - Shader Parameters
      - Border - Size: 0.00
      - Interlacing - Toggle: 0.00
    - Save
      - Save Core Preset

Change the following latency settings, substituting x with the specific game's number:

- Latency
  - Run-Ahead to Reduce Latency
    - Number of Frames to Run-Ahead: x
- Overrides
  - Save Game Overrides

Super Mario Bros: 1

## Nintendo - Nintendo 64 (ParaLLEl N64)

Change the following settings from the Quick Menu:

- Change `savestate_features = "serialized"` to `savestate_features = "deterministic"` in `~/.config/retroarch/cores/info/parallel_n64_libretro.info`
- Quick Menu
  - Shaders
    - Video Shaders: On
    - Load: shaders_slang/ntsc/ntsc-320px-composite.slangp
    - Prepend: shaders_slang/crt/crt-royale.slangp
    - Shader Parameters
      - Border - Size: 0.00
      - Interlacing - Toggle: 0.00
    - Save
      - Save Core Preset

Change the following latency settings, substituting x with the specific game's values:

- Latency
  - Run-Ahead to Reduce Latency
    - Number of Frames to Run-Ahead: x
- Overrides
  - Save Game Overrides

Donkey Kong 64: 7
Super Mario 64: 3
The Legend of Zelda Ocarina of Time: 10

## Sega - MS/GG/MD/CD (Genesis Plus GX)

Change the following settings from the Quick Menu:

- Change `savestate_features = "serialized"` to `savestate_features = "deterministic"` in `~/.config/retroarch/cores/info/parallel_n64_libretro.info`
- Quick Menu
  - Shaders
    - Video Shaders: On
    - Load: shaders_slang/ntsc/ntsc-320px-composite.slangp
    - Prepend: shaders_slang/crt/crt-royale.slangp
    - Shader Parameters
      - Border - Size: 0.00
      - Interlacing - Toggle: 0.00
    - Save
      - Save Core Preset

Change the following settings, and then navigate to the Quick Menu to save overrides:

- Overrides
  - Save Core Overrides

Change the following latency settings, substituting x with the specific game's values found frame advancing while holding an input, counting the frames until something happens, and subtracting 1 from that:

- Latency
  - Run-Ahead to Reduce Latency
    - Number of Frames to Run-Ahead: x
- Overrides
  - Save Game Overrides

## udev permissions

Change the following settings and run the following commands to switch input drivers to udev:

- Drivers
  - Video: vulkan

```
sudo usermod -a -G input `whoami`
```

Log out, and log back in.

Add `KERNEL=="event*", NAME="input/%k", MODE="666"` to `/etc/udev/rules.d/99-evdev.rules`, and run the following:


```
sudo udevadm control --reload-rules
sudo reboot
```
