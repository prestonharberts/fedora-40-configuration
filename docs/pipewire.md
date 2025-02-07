# PipeWire

Run the following to install EasyEffects:

```
sudo dnf install easyeffects -y
```

Run the following to change the sample rate to 384K:

```
pw-metadata -n settings 0 clock.force-rate 384000
```

To make this change permanent, you will need to copy some configs over with the following command:

```
sudo cp /usr/share/pipewire/ /etc/ -r
```

Now, edit `/etc/pipewire/pipewire.conf`. Uncomment `default.clock.rate` and change the value to `384000`.

Change the following settings:

- General
  - Launch Service at System Startup: On
  - Currently, I do not use an equalizer. Leave the above option off if so, and enable "Shutdown on Window Closing"
  - Audio
    - Inactivity Timeout: Off
- Spectrum
  - State
    - Enabled: Off

Run the following commands to download some [community presets](https://github.com/wwmm/easyeffects/wiki/Community-presets):

```
cd ~/Repos
git clone https://github.com/p-chan5/EasyPulse
cd EasyPulse
git checkout 0.2.0
```

Add them through the top menu of Easy Effects.

When finished adding the presets, load `hifi` and change the Output of Equalizer to 20.0 dB. Save as `hifi-louder`.
