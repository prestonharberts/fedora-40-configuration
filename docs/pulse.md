# Pulse

Run the following to switch from Pipewire to Pulse:

```
sudo dnf swap --allowerasing pipewire-pulseaudio pulseaudio -y
```

Run the following to install pulseaudio-utils:

```
sudo dnf install pulseaudio-utils -y

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
; avoid-resampling = false
avoid-resampling = true
; resample-method = s16le
resample-method = soxr-vhq
; default-sample-format
default-sample-format = float32le
; nice-level = -11
nice-level = -15
```

Reboot.

Run the following when playing audio, and ensure that it prints `resample method: copy` to have the best audio output:

```
pacmd list-sink-inputs | grep -e 'sample spec:' -e 'resample method:' -e 'application\.name'
```
