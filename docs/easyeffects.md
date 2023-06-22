# EasyEffects

Run the following to install EasyEffects:

```
sudo dnf install easyeffects -y
```

Change the following settings:

- General
  - Launch Service at System Startup: On
  - Currently, I do not use an equalizer. Leave the above option off if so, and enable "Shutdown on Window Closing"
- Spectrum
  - State
    - Enabled: Off

Run the following commands to download some [community presets](https://github.com/wwmm/easyeffects/wiki/Community-presets):

```
cd src
git clone https://github.com/p-chan5/EasyPulse
git checkout 0.2.0
```

Add them through the top menu of Easy Effects.

When finished adding the presets, load `hifi` and change the Output of Equalizer to 20.0 dB. Save as `hifi-louder`.
