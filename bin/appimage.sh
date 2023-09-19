#!/bin/bash

# AppImages

# Tutanota
wget -P ~/net/ https://mail.tutanota.com/desktop/tutanota-desktop-linux.AppImage
chmod u+x tutanota-desktop-linux.AppImage
./tutanota-desktop-linux.AppImage
mv tutanota-desktop-linux.AppImage ~/com/app/
