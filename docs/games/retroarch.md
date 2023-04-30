# Retroarch

Install Retroarch with the following line:

```
sudo dnf install retroarch
```

Change the following settings:

- Video
  - Fullscreen Mode
    - Start in Fullscreen Mode: On
  - Bilinear Filtering: On
- Input
  - Confirm Quit: Off
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
  - On-Screen Overlay
    - Display Overlay: Off
- User Interface
  - Menu Item Visibility
    - Quick Menu
      - Show 'Replay Controls': Off
      - Show 'Start Recording': Off
      - Show 'Start Streaming': Off
      - Show 'Latency': Off
      - Show 'Rewind': Off
      - Show 'Cheats': Off
      - Show 'Set Core Association': Off
      - Show 'Reset Core Association': Off
      - Show 'Download Thumbnails': Off
      - Show 'Information': Off
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
    - Menu Scale Factor: 0.70x
    - Collapse the Sidebar: On
    - Sort Playlists After Name Truncation (Restart Required): On
    - Menu Color Theme: Basic White
  - Pause Content When Controller Disconnects: On
- Playlists
  - Show Playlist Sub-Labels: Off
  - Scan Without Core Math: Off
- User
  - Username: Enter first name
- Directory
  - File Browser: ~/fun/emu

Quit and reopen Retroarch to save configuration, at this point.

Run the following before continuing:
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

Quit and reopen Retroarch to save configuration, at this point.

Go to Online Updater, and complete the following:

- Update Core Info Files
- Update Controller Profiles
- Update Cheats
- Update Databases
- Update Overlays
- Update GLSL Shaders

Change the following settings from the Settings page:

- Drivers
  - Video: Vulkan

Quit and reopen Retroarch to save configuration, at this point. Update and change the following setting from the Online Updater:

- Update Slang Shaders
- On-Demand Thumbnail Downloads: On

Download the following from the respective Downloader:

- Core Downloader
  - NEC - PC Engine / SuperGrafx / CD (Beetle PCE)
  - Nintendo - DS (DeSmuME)
  - Nintendo - Game Boy / Color (Gambatte)
  - Nintendo - Game Boy Advance (mGBA)
  - Nintendo - GameCube / Wii (Dolphin)
  - Nintendo - NES / Famicon (Nestopia UE)
  - Nintendo - Nintendo 64 (ParaLLEl N64)
  - Nintendo - SNES / SFC (Snes9x - Current)
  - Sega - MS/GG/MD/CD (Genesis Plus GX)
  - Sony - PlayStation (Beetle PSX HW)
  - Sony - PlayStation 2 (LRPS2)
//- Sony - PlayStation Portable (PPSSPP) Currently broken

After all this, import all content from `~/fun/emu/`. Change the following settings:

- Playlists
  - Manage Playlists
    - Every playlist
      - Default Core: Choose respective core
      - Label Display Mode: Keep Disc Index

Quit and reopen Retroarch to save configuration, at this point.

Run `ln -s ~/.config/retroarch/ ret`, sync `~/ret/` with Tresorit, and add `~/ret/` to Nautilus's bookmarks in it's alphabetical position. Move system files (BIOS, firmware, etc.) to `~/ret/system`.

Change the following Input settings:

- Input
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

Change the following settings with games loaded in their respective core:

- NEC - PC Engine / SuperGrafx / CD (Beetle PCE)
  - Quick Menu
    - Shaders
      - Video Shaders: On
      - Remember Last Used Shader Directory: On
      - Load: shaders_slang/crt/crt-royale.slangp
      - Shader Parameters
        - Interlacing - Toggle: 0.00
      - Save (above Apply Changes)
        - Save Core Preset
//- Nintendo - DS (DeSmuME)
//- Nintendo - Game Boy / Color (Gambatte)
//- Nintendo - Game Boy Advance (mGBA)
//- Nintendo - GameCube / Wii (Dolphin)
- Nintendo - NES / Famicon (Nestopia UE)
  - Quick Menu
    - Shaders
      - Video Shaders: On
      - Remember Last Used Shader Directory: On
      - Load: shaders_slang/crt/crt-royale.slangp
      - Shader Parameters
        - Interlacing - Toggle: 0.00
      - Save (above Apply Changes)
        - Save Core Preset
        - Also select Save Global Preset if desired
- Nintendo - Nintendo 64 (ParaLLEl N64)
  - Quick Menu
    - Shaders
      - Video Shaders: On
      - Remember Last Used Shader Directory: On
      - Load: shaders_slang/crt/crt-royale.slangp
      - Shader Parameters
        - Interlacing - Toggle: 0.00
      - Save (above Apply Changes)
        - Save Core Preset
- Nintendo - SNES / SFC (Snes9x - Current)
  - Quick Menu
    - Shaders
      - Video Shaders: On
      - Remember Last Used Shader Directory: On
      - Load: shaders_slang/crt/crt-royale.slangp
      - Shader Parameters
        - Interlacing - Toggle: 0.00
      - Save (above Apply Changes)
        - Save Core Preset
- Sega - MS/GG/MD/CD (Genesis Plus GX)
  - Quick Menu
    - Shaders
      - Video Shaders: On
      - Remember Last Used Shader Directory: On
      - Load: shaders_slang/crt/crt-royale.slangp
      - Shader Parameters
        - Interlacing - Toggle: 0.00
      - Save (above Apply Changes)
        - Save Core Preset
- Sony - PlayStation (Beetle PSX HW)
  - Quick Menu
    - Shaders
      - Video Shaders: On
      - Remember Last Used Shader Directory: On
      - Load: shaders_slang/crt/crt-royale.slangp
      - Shader Parameters
        - Interlacing - Toggle: 0.00
      - Save (above Apply Changes)
        - Save Core Preset
- Sony - PlayStation 2 (LRPS2)
  - Quick Menu
    - Core Options
      - System
        - BIOS: USA v01.60(07/02/2002) Console
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
      - Save (above Apply Changes)
        - Save Core Preset
     - Close Content to save to RetroArch doesn't freeze
//- Sony - PlayStation Portable (PPSSPP) Currently broken
