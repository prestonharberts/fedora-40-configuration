# Yuzu

Run the following to install Yuzu:

```
sudo flatpak install flathub org.yuzu_emu.yuzu -y
```

Change the following settings:

- System
  - System
    - Device Name: Enter username
  - Profiles
    - Add new profile and delete yuzu profile
- Graphics
  - Graphics
    - Graphics Settings
      - Resolution: 2X (1440p/2160p)
      - Window Adapting Filter: AMD FidelityFX Super Resolution
      - Anti-Aliasing Method: None
  - Advanced
    - Advanced Graphics Settings
      - Use asynchronous shader building (Hack): On
      - Anisotropic Filtering: 16x
- Controls
  - Select correct Input Device, set controls, and save profile

Change the following settings from the menu bar:

- View
  - Fullscreen: On

Change the settings in the status bar to match the following:

- Docked -> Handheld

Run the following if you have already synced saves with Tresorit:

```
wip
```

Run the following to sync saves with Tresorit for the first time:

```
mkdir ~/fun/sav/yuzu/
ln -s ~/.var/app/org.yuzu_emu.yuzu/data/yuzu/nand/ ~/fun/sav/yuzu/
``` 


## Mods

Download any mods for games you have from [here](https://yuzu-emu.org/wiki/switch-mods/).

## Monster Hunter Generations Ultimate

Enable the following mods:

- 4k
- 60 or 120 FPS depending on your monitor's refresh rate

Install the update and move the all DLC save files to the game's save location. Change the following settings from the game's Properties menu:

- Graphics
  - Graphics Settings
    - Resolution: 1X (720p/1080p)

Change the following settings in within the game's settings:

- Music Volume: Off (if you will have something else playing in the background)
- Camera Speed: Default
- Bowgun Controls: Type 1
- Orientation: Type 2
- Control Type: Type 3
- L Stick Controls: Type 2

## Super Mario Odyssey

Enable the following mods:

- Disable Dynamic Resolution
- Disable FXAA
- SMO Web Applet Bypass
- Screenshot Mode Graphics
