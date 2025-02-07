# keyd

Install with the following commands:

```
git clone https://github.com/rvaiya/keyd
cd keyd
make && sudo make install
sudo systemctl enable keyd && sudo systemctl start keyd
```

Now, move the provided `productivity/default.conf` into `/etc/keyd/`, and run `sudo keyd reload`.

## No longer used

Paste the following into a new file at `~/.config/systemd/user/keyd-user.service`:

```
[Unit]
Description=Setup Keyd User Permissions
After=network.target

[Service]
Type=oneshot
ExecStart=/home/%u/Bin/keyd-user
RemainAfterExit=true
StandardOutput=journal

[Install]
WantedBy=default.target
```

Run the following so that it runs at login:

```
systemctl --user daemon-reload
systemctl --user restart keyd-setup.service
```
