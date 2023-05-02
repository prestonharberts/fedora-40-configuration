#!/bin/bash

~/.local/share/tresorit/tresorit-cli start
systemctl --user daemon-reload
systemctl --user restart syncthing.service

sudo cp ~/src/fedora-37-configuration/conf/keyd/productivity/default.conf /etc/keyd/
sudo keyd reload

gsettings set org.gnome.shell disable-user-extensions false
echo powersave | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
gsettings set org.gnome.desktop.background picture-uri file:///home/prestonharberts/pic/wal/current.png
