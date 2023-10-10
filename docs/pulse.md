# Pulse

Run the following to switch from Pipewire to Pulse:

```
sudo dnf swap --allowerasing pulseaudio pipewire-pulseaudio
```

Reboot, then run the following to edit the Pulse configuration:

```
sudo vi /etc/pulse/daemon.conf
```

Run the following to ensure you can change the resample method to `soxr-vhq`:

```
pulseaudio --dump-resample-methods
```

Change the following settings (copy and paste the lines with the leading semicolons; those are the defaults that are commented out):

```
; avoid-resampling
avoid-resampling = true
; resample-method
resample-method = soxr-vhq
; default-sample-format
default-sample-format = float32le
; nice-level
nice-level = -15
```
