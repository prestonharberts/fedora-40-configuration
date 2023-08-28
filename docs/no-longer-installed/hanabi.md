# Hanabi

Run the following to install Hanabi:

```
sudo dnf install git meson ninja-build npm clapper -y
cd ~/src
git clone https://github.com/jeffshee/gnome-ext-hanabi.git
cd gnome-ext-hanabi
./run.sh install
```

Log out and back in to install. Access the settings from the extension page in Gnome Extensions, and change the following settings:

- General
  - Fit Mode: Cover
  - Mute Audio: On

Download wallpapers from Wallpaper Engine on Steam, making sure to adjust your filters to only include videos. Copy the MP4 videos to your wallpaper folder.

Resize wallpapers with the following command if the "Fit Mode" option is not available (change the resolution to your monitor):

```
ffmpeg -i input-filename.mp4 -aspect 3456:2160 -c copy output-filename.mp4
```
