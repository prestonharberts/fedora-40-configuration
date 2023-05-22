#!/bin/bash

~/.local/share/tresorit/tresorit-cli start
systemctl --user daemon-reload
systemctl --user restart syncthing.service
