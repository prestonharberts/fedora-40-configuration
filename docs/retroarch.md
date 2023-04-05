# Retroarch

Install Retroarch with the following line:

```
sudo dnf install retroarch
```

Change the following settings:

- Video
  - Fullscreen Mode
    - Start in Fullscreen Mode: On
    - Windowed Fullscreen Mode: Off
  - Bilinear Filtering: On
- Core
  - Manage Cores
    - Select and delete each core with "Delete Core"
- Saving
  - Sort Saves into Folders by Core Name: On
  - Sort Save States into Folders by Core Name: On
  - Auto Save State: On
  - SaveRAM Compression: On
  - Write Saves to Content Directory: On
  - Write Save States to Content Directory: On
  - Write Screenshots to Content Directory: On
- File Browser
  - Show Hidden Files and Directories: On
  - Use Built-In Media Player: Off
  - Use Built-In Image Viewer: Off
  - Filter by Current Core: On
  - Remember Last Used Start Directory: On
- On-Screen Display
  - On-Screen Notifications
    - Notification Visibility
//    - "Load Content" Startup Notification: Off
//    - Input (Autoconfig) Connection Notifications: Off
//    - Cheat Code Notifications: Off
//    - Patch Notifications: Off
//    - Input Remap Loaded Notifications: Off
//    - Config Override Loaded Notifications: Off
//    - Initial Disc Restored Notifications: Off
      - Menu-only Notifications: On
  - On-Screen Overlay
//  - Display Overlay: Off
- User Interface
  - Menu Item Visibility
    - Show 'Dump Disc': Off
    - Show 'Online Updater': On
    - Show 'Core Downloader': On
    - Show 'Information': Off
    - Show 'Configuration File': Off
    - Show 'Help': Off
    - Show 'Images': Off
    - Show 'Videos': Off
    - Show 'Contentless Cores': Off
    - Style of Date and Time: HH:MM (AM/PM)
    - Show Battery Level: Off
    - Show Core Name: Off
  - Appearance
//  - Collapse the Sidebar: On
    - Sort Playlists After Name Truncation (Restart Required): On
    - Menu Color Theme: Basic White
  - Pause Content When Controller Disconnects: On
  - Navigation Wrap-Around: Off
- Playlists
  - Show Playlist Sub-Labels: Off
  - Scan Without Core Math: Off
- User
  - Username: Enter first name
- Directory
  - File Browser: ~/fun/emu

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
  - Core info: ~/.config/retroarch/info
  - Databases: ~/.config/retroarch/rdb
  - Cheats: ~/.config/retroarch/cht
  - Video filters: ~/.config/retroarch/filters/video
  - Audio filters: ~/.config/retroarch/filters/audio
  - Controller Profiles: ~/.config/retroarch/autoconfig

Go to Online Updater, and complete the following:

- Update Core Info Files
- Update Controller Profiles
- Update Cheats
- Update Databases
- Update Overlays
- Update GLSL Shaders

Change the following setting:

- On-Demand Thumbnail Downloads: On

Download the following from the respective Downloader:

- Core Downloader
  - NEC - PC Engine / SuperGrafx / CD (Beetle PCE)
  - Nintendo - DS (DeSmuME)
  - Nintendo - Game Boy / Color (Gambatte)
  - Nintendo - Game Boy Advance (mGBA)
  - Nintendo - NES / Famicon (Nestopia UE)
  - Nintendo - Nintendo 64 (ParaLLEl N64)
  - Nintendo - SNES / SFC (Snes9x - Current)
  - Sega - MS/GG/MD/CD (Genesis Plus GX Wide)
  - Sony - PlayStation (Beetle PSX HW)
  - Sony - PlayStation 2 (LRPS2)
//- Sony - PlayStation Portable (PPSSPP)
