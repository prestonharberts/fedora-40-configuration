#!/bin/bash

~/.local/share/tresorit/tresorit-cli start
systemctl --user daemon-reload
systemctl --user restart syncthing.service
sudo cp ~/src/fedora-37-configuration/conf/keyd/productivity/default.conf /etc/keyd/
sudo keyd reload
