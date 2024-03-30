# RPM Fusion

Run the following to add the RPM Fusion repository:

```
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
```

Run the following to add the RPM Fusion Free Tainted repository:

```
sudo dnf install rpmfusion-free-release-tainted -y
```

