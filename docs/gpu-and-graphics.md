# GPU and graphics

Run the following to install necessary graphics packages ([source](https://www.reddit.com/r/Fedora/comments/ud4uv0/fedora_for_gaming/)):

```
sudo dnf install vulkan-loader vulkan-loader.i686 vulkan vulkan-tools intel-media-driver ffmpeg-free -y
```

Run the following if you plan to use your NVIDIA GPU:

```
sudo dnf install xorg-x11-drv-nvidia akmod-nvidia libva-nvidia-driver -y
```

## Switch to Xorg

Log out of the current session, and when you are about to enter your password, select the gear at the bottom of the screen. Select `GNOME on Xorg`.
