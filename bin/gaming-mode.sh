#!/bin/bash

proc=`pidof tresorit tresorit-daemon syncthing`
kill $proc
sudo cp ~/src/fedora-37-configuration/conf/keyd/gaming/default.conf /etc/keyd/
sudo keyd reload
