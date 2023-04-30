#!/bin/bash

proc=`pidof tresorit tresorit-daemon syncthing`
kill $proc

sudo cp ~/src/fedora-37-configuration/conf/keyd/gaming/default.conf /etc/keyd/
sudo keyd reload

gsettings set org.gnome.shell disable-user-extensions true

echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
gsettings set org.gnome.desktop.background picture-uri file:///home/prestonharberts/pic/wal/colors/blank-black.jpg
