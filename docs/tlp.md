# tlp

First, uninstall power-profiles-daemon and install TLP and powertop with the following:

```
sudo dnf remove power-profiles-daemon -y
sudo dnf install tlp tlp-rdw powertop -y
```

Run the following to start TLP on startup and to remove two processes that interfere with TLP's radio device switching:

```
sudo systemctl enable tlp.service
sudo systemctl enable tlp.service
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket
```

Run `tlp-stat`, and check if it is enabled by it looking like the following:

```
+++ TLP Status
State          = enabled
RDW state      = enabled
Last run       = 01:24:34 PM,     40 sec(s) ago
Mode           = battery
Power source   = battery
```

To disable USB auto suspend, edit `/etc/tlp.conf`, and change the following setting:

```
USB_AUTOSUSPEND=0
```

Force the battery configuration by changing the following settings:

```
# Operation mode when no power supply can be detected: AC, BAT.

TLP_DEFAULT_MODE=BAT

# Operation mode select: 0=depend on power source, 1=always use TLP_DEFAULT_MODE

TLP_PERSISTENT_DEFAULT=1
```
