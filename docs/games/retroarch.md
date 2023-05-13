# Retroarch

Install Retroarch with the following line:

```
sudo dnf install retroarch
```

Change the following settings:

- Drivers
  - Video: vulkan
- Video
  - Output
    - FPU Index: Confirm that it is using your primary GPU
  - Fullscreen Mode
    - Start in Fullscreen Mode: On
  - Scaling
    - Aspect Ratio: Choose monitor aspect ratio
- Input
  - Confirm Quit: Off
  - Menu Controls
    - Menu Swap OK and Cancel Buttons: On
    - Disable Info Button: On
    - Disable Search Button: On
  - Hotkeys
    - Hotkey Enable: Controller Home button
    - Menu Toggle (Controller Combo): L3 + R3
    - Close Content: Right face button
    - Restart Content: Left face button
    - Fast-Forward (Hold): Right trigger
    - Slow-Motion (Hold): Left trigger
    - Pause: Bottom face button
    - Audio Mute: Top face button
    - Volume Up: Right shoulder button
    - Volume Down: Left shoulder button
    - Load State: D-pad up
    - Save State: D-pad down
    - Next Save State Slot: D-pad right
    - Previous Save State Slot: D-pad left
    - Take Screenshot: Left menu button
    - Fullscreen (Toggle): Right menu button
  - Port 1 Controls
    - Analog to Digital Type: Left Analog
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
- File Browser
  - Show Hidden Files and Directories: On
  - Use Built-In Media Player: Off
  - Use Built-In Image Viewer: Off
  - Filter by Current Core: On
  - Remember Last Used Start Directory: On
- On-Screen Display
  - On-Screen Notifications
    - Notification Visibility
      - Menu-only Notifications: On
    - Graphics Widgets: Off
      - Notification Color (Red): 0
      - Notification Color (Green): 255
      - Notification Color (Blue): 0
  - On-Screen Overlay
    - Display Overlay: Off
- User Interface
  - Menu Item Visibility
    - Quick Menu
      - Show 'Save/Load State': Off
      - Show 'Unde Save/Load State': Off
      - Show 'Replay Controls': Off
      - Show 'Start Recording': Off
      - Show 'Start Streaming': Off
      - Show 'On-Screen Overlay': Off
      - Show 'Rewind': Off
      - Show 'Cheats': Off
      - Show 'Set Core Association': Off
      - Show 'Reset Core Association': Off
      - Show 'Download Thumbnails': Off
      - Show 'Information': Off
    - Settings
      - Show 'Audio': Off
      - Show 'Frame Throttle': Off
      - Show 'Recording': Off
      - Show 'On-Screen Display': Off
      - Show 'AI Service': Off
      - Show 'Accessibility': Off
      - Show 'Power Management': Off
      - Show '
      - Show '
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
    - Thumbnail Upscaling Threshold: 1024
  - Pause Content When Controller Disconnects: On
  - Mouse Support: Off
- Achievements
  - Achievements: On
  - Username: Enter username
  - Password: Enter password
  - Hardcore Mode: On
- Playlists
  - Show Playlist Sub-Labels: Off
  - Scan Without Core Math: Off
  - Sort Playlists After Name Truncation: On
- User
  - Username: Enter username
- Directory
  - File Browser: ~/fun/emu

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

- Online Updater
  - On-Demand Thumbnail Downloads: On
- Configuration File
  - Save Current Configuration

Go to Online Updater, and complete the following:

- Update Core Info Files
- Update Controller Profiles
- Update Cheats
- Update Databases
- Update Overlays
- Update Slang Shaders

Download the following from the respective Downloader:

- Core Downloader
  - Arcade (FinalBurn Neo)
  - NEC - PC Engine / SuperGrafx / CD (Beetle PCE)
  - Nintendo - Game Boy / Color (Gambatte)
  - Nintendo - Game Boy Advance (mGBA)
  - Nintendo - NES / Famicon (Nestopia UE)
  - Nintendo - Nintendo 64 (ParaLLEl N64)
  - Nintendo - SNES / SFC (Snes9x - Current)
  - Sega - MS/GG/MD/CD (Genesis Plus GX)
  - Sony - PlayStation (Beetle PSX HW)
  - Sony - PlayStation 2 (LRPS2)

After all this, import all content from `~/fun/emu/`. Change the following settings:

- Playlists
  - Manage Playlists
    - Every playlist
      - Default Core: Choose respective core
      - Label Display Mode: Keep Disc Index

Go to the Main Menu, and select the following option:

- Configuration File
  - Save Current Configuration

Run the following to sync saves with Tresorit:

```
ln -s ~/.config/retroarch/saves/ ~/fun/sav/retroarch/saves/
ln -s ~/.config/retroarch/states/ ~/fun/sav/retroarch/states
```

Move system files (BIOS, firmware, etc.) to `~/.config/retroarch/system`.

Download the [CyberLab Mega Bezel - Death To Pixels shader preset pack](https://github.com/CyberLabSystems/CyberLab-Mega-Bezel-Death-To-Pixels-Shader-Preset-Pack/releases) and the [CyberLab custom Blargg NTSC video filter presets](https://github.com/CyberLabSystems/CyberLab-Custom-Blargg-NTSC-Video-Filter-Presets/releases). Move the shaders to `~/.config/retroarch/shaders/`. Move the filter presets to `~/.config/retroarch/filters/video/`.

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
    - Remember Last Used Shader Directory: On
    - Load: shaders_slang/CyberLab/MBZ_0_Smooth-Advance_Full_Reflections/[choose monitor resolution]/CyberLab_Arcade-Sharp_1440p_PVM-Edition_ADV.slangp
    - Shader Parameters
      - [ CRT SCREEN SCALING GENERAL ]
        - Integer Scale Mode: 0.00
      - [ INTRO SEQUENCE ]
        - When to Show Intro: 0.00
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
      - [ CRT SCREEN SCALING GENERAL ]
        - Integer Scale Mode: 1.00
      - [ ASPECT RATIO ]
        - Type: 6.00
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
    - Remember Last Used Shader Directory: On
    - Load: shaders_slang/handheld/gameboy.slangp (for Game Boy games) or shaders_slang/handheld/retro-tiles.slangp (for Game Boy Color games)
    - Prepend: shaders_slangp/handheld/gbc-color.slangp (for Game Boy Color games)
    - Shader Parameters (for Game Boy Color games)
      - Lighten Screen: 0.70
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
    - Remember Last Used Shader Directory: On
    - Load: shaders_slang/CyberLab/MBZ_0_Smooth-Advance_Full_Reflections/[choose monitor resolution]/Console_Specific_Presets/CyberLab_NES_ADV.slangp
    - Shader Parameters
      - [ CRT SCREEN SCALING GENERAL ]
        - Integer Scale Mode: 0.00
      - [ INTRO SEQUENCE ]
        - When to Show Intro: 0.00
    - Prepend: shaders_slang/ntsc/ntsc-256px-composite.slangp
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
    - Remember Last Used Shader Directory: On
    - Load: shaders_slang/CyberLab/MBZ_0_Smooth-Advance_Full_Reflections/[choose monitor resolution]/Console_Specific_Presets/CyberLab_N64_ADV.slangp
    - Shader Parameters
      - [ CRT SCREEN SCALING GENERAL ]
        - Integer Scale Mode: 0.00
      - [ INTRO SEQUENCE ]
        - When to Show Intro: 0.00
    - Save
      - Save Core Preset

Change the following latency settings, substituting x and y with the specific game's values:

- Latency
  - Run-Ahead to Reduce Latency
    - Number of Frames to Run-Ahead: x
  - Shaders
    - Shader Parameters
      - [ CROPPING CORE IMAGE ]
        - Integer Scale Mode: y
- Overrides
  - Save Game Overrides

Donkey Kong 64: 7; 5.10
Super Mario 64: 3; 3.20
The Legend of Zelda Ocarina of Time: 10

Change the following settings:

- Quick Menu
  - Shaders
    - Shader Parameters
    - Save
      - Save Game Preset

## Sega - MS/GG/MD/CD (Genesis Plus GX)

Change the following settings from the Quick Menu:

- Change `savestate_features = "serialized"` to `savestate_features = "deterministic"` in `~/.config/retroarch/cores/info/parallel_n64_libretro.info`
- Quick Menu
  - Shaders
    - Video Shaders: On
    - Remember Last Used Shader Directory: On
    - Load: shaders_slang/CyberLab/MBZ_0_Smooth-Advance_Full_Reflections/[choose monitor resolution]/Console_Specific_Presets/CyberLab_Genesis_for_CyberLab_or_Blargg_Composite_or_S-Video_Filter.slangp
    - Shader Parameters
      - [ CRT SCREEN SCALING GENERAL ]
        - Integer Scale Mode: 0.00
      - [ INTRO SEQUENCE ]
        - When to Show Intro: 0.00
    - Save
      - Save Core Preset

Change the following settings, and then navigate to the Quick Menu to save overrides:

- Video
  - Video Filter: Blargg_NTSC_Genesis_Composite_CyberLab_Special_Edition_II.filt
- Overrides
  - Save Core Overrides

Change the following latency settings, substituting x with the specific game's values:

- Latency
  - Run-Ahead to Reduce Latency
    - Number of Frames to Run-Ahead: x
- Overrides
  - Save Game Overrides

Comix Zone: 

## Sony - PlayStation (Beetle PSX HW)

Change the following settings from the Quick Menu:

- Quick Menu
  - Shaders
    - Video Shaders: On
    - Remember Last Used Shader Directory: On
    - Load: shaders_slang/CyberLab/MBZ_0_Smooth-Advance_Full_Reflections/[choose monitor resolution]/Console_Specific_Presets/CyberLab_PSX_Composite_ADV.slangp
    - Shader Parameters
      - [ NON-INTEGER SCALE PERCENT ]
        - Non-Integer Scale %: 82.97
      - [ INTRO SEQUENCE ]
        - When to Show Intro: 0.00
    - Save
      - Save Core Preset

## Sony - PlayStation 2 (LRPS2) (currently broken for certain titles)

Change the following settings from the Quick Menu:

- Core Options
  - System
    - BIOS: Choose region
    - Fast Loading: On
  - Video
    - Aspect Ratio: Widescreen (16:9)
    - Enable Widescreen Patches: On
  - Shaders
    - Video Shaders: On
    - Remember Last Used Shader Directory: On
    - Load: shaders_slang/crt/crt-royale.slangp
    - Shader Parameters
      - Interlacing - Toggle: 0.00
    - Save
      - Save Core Preset
