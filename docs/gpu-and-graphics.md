# GPU and graphics

Run the following to install necessary graphics packages ([source](https://www.reddit.com/r/Fedora/comments/ud4uv0/fedora_for_gaming/)):

```
sudo dnf install vulkan-loader vulkan-loader.i686 vulkan vulkan-tools intel-media-driver ffmpeg-free -y
```

(Only for desktop. I use default drivers for battery devices) Run the following if you plan to use your NVIDIA GPU:

```
sudo dnf install xorg-x11-drv-nvidia akmod-nvidia libva-nvidia-driver -y
```

## Switch to Xorg

Run the following to open the GDM config file:

```
sudo vi /etc/gdm/custom.conf
```

Uncomment `WaylandEnable=false` and add the following to the `[daemon]` section:

```
DefaultSession=gnome-xorg.desktop
```

Source: https://docs.fedoraproject.org/en-US/quick-docs/configuring-xorg-as-default-gnome-session/

## GRUB changes

Run the following to open the GRUB config file:

```
sudo vi /etc/default/grub
```

Change the `GRUB_CMDLINE_LINUX_DEFAULT` line to be this:

```
GRUB_CMDLINE_LINUX="rhgb quiet nomodeset nvidia-drm.modeset=1"
```

Run the following to apply changes:

```
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
```
