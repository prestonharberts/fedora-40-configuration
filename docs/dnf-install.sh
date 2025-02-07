sudo dnf remove clapper gnome-boxes gnome-calendar gnome-connections gnome-contacts gnome-maps gnome-tour gnome-weather ptyxis simple-scan totem totem-plugins yelp -y

sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h" | sudo tee -a /etc/yum.repos.d/vscodium.repo


sudo dnf install gstreamer1-plugin-openh264 gstreamer1-libav gstreamer1-plugin-libav gstreamer1-plugins-bad-free gstreamer1-plugins-ugly gstreamer1-plugins-ugly-free libavcodec-freeworld gcolor3 cpan dconf-editor  detox digikam dynamic-wallpaper-editor foliate gnome-chess gnome-sudoku warble gnome-extensions-app openssl gnome-tweaks go vulkan-loader vulkan-loader.i686 vulkan vulkan-tools intel-media-driver ffmpeg-free xorg-x11-drv-nvidia akmod-nvidia libva-nvidia-driver inkscape konsole5 neovim clang-tools-extra p7zip p7zip-plugins easyeffects gnome-pomodoro gnome-shell-extension-pop-shell xprop puddletag rubygems sdcv sigil steam gamescope syncthing unrar vim virt-manager vlc wmctrl xclip zathura zathura-plugins-all codium libreoffice-draw calibre -y
