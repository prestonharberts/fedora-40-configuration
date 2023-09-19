#!/bin/bash

# This script will install and config as much of my system as possible from the terminal.
# At the end of this script are commented out portions. Uncomment if needed.

# DNF

# RPM Fusion repositories
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install rpmfusion-free-release-tainted -y
# Graphics
sudo dnf install xorg-x11-drv-nvidia akmod-nvidia vulkan-loader vulkan-loader.i686 vulkan vulkan-tools intel-media-driver ffmpeg-free nvidia-vaapi-driver -y
# GNOME
sudo dnf install gnome-extensions-app -y
sudo dnf install gnome-tweaks -y
sudo dnf install dconf-editor -y
sudo dnf install gnome-shell-extension-pop-shell xprop -y
# Power
sudo dnf remove power-profiles-daemon -y
sudo dnf install tlp tlp-rdw powertop -y
sudo systemctl enable tlp.service
sudo systemctl enable tlp.service
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket
# Audio
sudo dnf install easyeffects -y
# Multimedia codecs
sudo dnf install gstreamer1-plugin-openh264 -y
sudo dnf install gstreamer1-libav -y
sudo dnf install gstreamer1-plugin-libav -y
sudo dnf install gstreamer1-plugins-bad-free -y
sudo dnf install gstreamer1-plugins-ugly -y
sudo dnf install gstreamer1-plugins-ugly-free -y
# Terminal
sudo dnf install konsole5 -y
# Python
sudo dnf install pip -y
# Ruby
sudo dnf install rubygems -y
# Perl
sudo dnf install cpan -y
cpan install Module::Build
cpan install File::Rename
# Text editor
sudo dnf install vim -y
sudo dnf install codium -y
sudo dnf install meld -y
sudo dnf install neovim -y
# Command line
sudo dnf install neofetch -y
sudo dnf install detox -y
sudo dnf install xclip -y
sudo dnf install p7zip -y
sudo dnf install p7zip-plugins -y
sudo dnf install unrar -y
# Syncing
sudo dnf install syncthing -y
# Music
sudo dnf install puddletag -y
# CD/DVD drive
sudo dnf install libdvdcss -y
# Productivity
sudo dnf install libreoffice-draw -y
sudo dnf install gnome-pomodoro -y
# Art
sudo dnf install gcolor3 -y
sudo dnf install inkscape -y
# Ebooks
sudo dnf install foliate -y
# Gaming
sudo dnf install steam -y
sudo dnf install steam-devices -y
sudo dnf install lutris -y

# Dependencies

# Trimage dependencies
sudo dnf install PyQt5 jpegoptim optipng pngcrush -y

# Flatpak

# Flatpak repository
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# GNOME
sudo flatpak install flathub io.github.realmazharhussain.GdmSettings -y
# Security
sudo flatpak install flathub com.bitwarden.desktop -y
# Productivity
sudo flatpak install flathub md.obsidian.Obsidian -y
sudo flatpak install flathub com.todoist.Todoist -y
# Music
sudo flatpak install flathub io.bassi.Amberol -y
sudo flatpak install flathub app.drey.EarTag -y
sudo flatpak install flathub org.freac.freac -y
# Files
sudo flatpak install flathub io.gitlab.adhami3310.Converter -y
# Social
sudo flatpak install flathub com.discordapp.Discord -y
# Video
sudo flatpak install flathub org.shotcut.Shotcut -y
# Art
sudo flatpak install org.kde.krita -y
# Ebooks
sudo flatpak install flathub net.sourceforge.mcomix -y

# AppImages

# Tutanota
wget -P ~/net/ https://mail.tutanota.com/desktop/tutanota-desktop-linux.AppImage
chmod u+x tutanota-desktop-linux.AppImage
./tutanota-desktop-linux.AppImage
mv tutanota-desktop-linux.AppImage ~/com/app/

# Git

# Firefox theme
cd ~/src/
git clone https://github.com/rafaelmardojai/firefox-gnome-theme
cd firefox-gnome-theme
./scripts/auto-install.sh
# San Francisco fonts
cd ~/src/
git clone https://github.com/gonzaru/san-francisco-fonts.git
cd san-francisco-fonts
mkdir -p ~/.local/share/fonts
cp SF* ~/.local/share/fonts/ -r
fc-cache -v -f
# Hanabi
# sudo dnf install git meson ninja-build npm clapper -y
# cd ~/src
# git clone https://github.com/jeffshee/gnome-ext-hanabi.git
# cd gnome-ext-hanabi
# ./run.sh install
# Keyd
cd ~/src/
git clone https://github.com/rvaiya/keyd
cd keyd
make && sudo make install
sudo systemctl enable keyd && sudo systemctl start keyd
sudo cp ~/src/fedora-36-configuration/config/keyd/productivity/default.conf /etc/keyd/
sudo keyd reload
# Logiops
# cd ~/src
# git clone https://github.com/PixlOne/logiops
# cd logiops
# sudo dnf install cmake libevdev-devel systemd-devel libconfig-devel gcc-c++ -y
# mkdir build
# cd build
# cmake ..
# make
# sudo make install
# sudo cp ~/src/fedora-36-configuration/config/logiops/logid.cfg /etc/
# sudo systemctl enable logid
# Segoe fonts
# cd ~/src/
# git clone https://github.com/SpudGunMan/segoe-ui-linux
# cd segoe-ui-linux
# chmod u+x install.sh
# sudo ./install.sh
# sudo fc-cache -fv

# Other

# Tresorit
wget -P ~/net/ https://installer.tresorit.com/tresorit_installer.run
cd ~/net/
sudo bash ./tresorit_installer.run

# GNOME extensions



# Uncomment if needed
#
# Logiops dependencies
# sudo dnf install cmake libevdev-devel systemd-devel libconfig-devel gcc-c++ -y
#
# Netgear A7000 driver dependencies
# sudo dnf install dkms make automake gcc gcc-c++ kernel-devel elfutils-libelf-devel kernel-headers git -y
