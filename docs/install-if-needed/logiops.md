# logiops

Install logiops by running the following commands:

```
cd src && git clone https://github.com/PixlOne/logiops && cd logiops
sudo dnf install cmake libevdev-devel systemd-devel libconfig-devel gcc-c++ -y
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
