# AppImageLauncher

Go to the [AppImageLauncher website](https://github.com/TheAssassin/AppImageLauncher), and download the latest `x86_64.rpm` release. Then, open Terminal, and run the following to install AppImageLauncher, changing the filename:

```
sudo dnf install ~/Downloads/filename.rpm -y
```

Change the following settings:

- AppImageLauncher
  - Ask whether to move AppImage files into the applications directory
  - Location where to store your AppImage files to ease their management: `/home/prestonharberts/System/appimages`
- appimagelauncherd
  - General settings
    - Auto start auto-integration daemon: Off

Remove all files created by this app in `~/.local/share/applications/`.
