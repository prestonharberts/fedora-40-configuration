# Graphics and Gaming

Run the following to install necessary graphics packages ([source](https://www.reddit.com/r/Fedora/comments/ud4uv0/fedora_for_gaming/)):

```
sudo dnf install xorg-x11-drv-nvidia akmod-nvidia vulkan-loader vulkan-loader.i686 vulkan vulkan-tools intel-media-driver ffmpeg-free libavcodec-freeworld nvidia-vaapi-driver
```

## Switch to Xorg

Log out of the current session, and when you are about to enter your password, select the gear at the bottom of the screen. Select `GNOME on Xorg`.

## EnvyControl (for NVIDIA Optimus systems)

Run the following to install EnvyControl:

```
git clone https://github.com/bayasdev/envycontrol
cd envycontrol
sudo dnf install pip
sudo pip install .
```

Install the [GPU profile selector extension](https://extensions.gnome.org/extension/5009/gpu-profile-selector/). Switch to NVIDIA, and enter your password when prompted. Then, restart when prompted.
