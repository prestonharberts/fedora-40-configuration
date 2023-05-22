# PCSX2

Download PCSX2 by PCSX2 from Software.

Scan for PS2 games in your PS2 games folder, and copy your PS2 BIOS files to `~/.var/app/net.pcsx2.PCSX2/config/PCSX2/bios`.

Change the following settings:

- Interface
  - Behaviour
    - Save State On Shutdown: On
    - Pause On Focus Loss: On
  - Game Display
    - Start Fullescreen: On
    - Hide Cursor In Fullscreen: On
  - Preferences
    - Theme: Fusion [Light]
- Graphics
  - Renderer
    - Renderer: Software
  - Display
    - Anti-blur: Off
  - Post-Processing
    - Filters
      - TV Shader: Lottes CRT
  - OSD
    - On-Screen Display
      - Show OSD Messages: Off
- BIOS
  - BIOS Selection
    - Select the most recent BIOS for your region by clicking on it

Make a new controller profile named after the controller in use, and set its keybinds.

For any game that is not in the same region as your current BIOS, update the Properties settings for that game to have the required BIOS.

Run the following if you have already synced saves with Tresorit:

```
rm ~/.var/app/net.pcsx2.PCSX2/config/PCSX2/memcards/ ~/.var/app/net.pcsx2.PCSX2/config/PCSX2/sstates/ -r
ln -s ~/fun/sav/pcsx2/memcards/ ~/.var/app/net.pcsx2.PCSX2/config/PCSX2/
ln -s ~/fun/sav/pcsx2/sstates/ ~/.var/app/net.pcsx2.PCSX2/config/PCSX2/
```

Run the following to sync saves with Tresorit for the first time:

```
ln -s ~/.var/app/net.pcsx2.PCSX2/config/PCSX2/memcards/ ~/fun/sav/pcsx2/memcards/
ln -s ~/.var/app/net.pcsx2.PCSX2/config/PCSX2/sstates/ ~/fun/sav/pcsx2/sstates/
```

## FlatOut 2

Change the games Properties from the context menu:

- Graphics
  - Display
    - Aspect Ratio: Widescreen (16:9) (Unless desired monitor is another aspect ratio)
    - Enable Widescreen Patches: On (Unless desired monitor is another aspect ratio)
