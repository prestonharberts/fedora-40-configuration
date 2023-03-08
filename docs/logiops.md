# logiops

Install logiops by running the following commands:

```
sudo dnf install cmake libevdev-devel systemd-devel libconfig-devel gcc-c++
mkdir build
cd build
cmake ..
make
sudo make install
```

Copy `logid.cfg` to `/etc/` with `sudo cp /dir/to/logid.cfg /etc/`.

Run the following to enable the daemon to start at boot:

```
sudo systemctl enable logid
```
