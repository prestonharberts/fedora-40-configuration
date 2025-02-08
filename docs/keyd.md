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

Add the following line to the end of the file upon running `sudo visudo`:

```
prestonharberts ALL=(ALL) NOPASSWD: /usr/local/bin/keyd
```

Give user permissions to `/etc/keyd/` with this command:

```
sudo chmod u+x /etc/keyd/
```

Run the following in terminal to give more permissions:

```
sudo chown -R $USER:$USER /etc/keyd/
sudo usermod -aG keyd $USER
sudo chown root:keyd /var/run/keyd.socket
sudo chmod 660 /var/run/keyd.socket
newgrp keyd
```
