# Tutanota

Run the following to download and install Tutanota:

```
wget -P ~/net/ https://mail.tutanota.com/desktop/tutanota-desktop-linux.AppImage
chmod u+x tutanota-desktop-linux.AppImage
mv tutanota-desktop-linux.AppImage ~/com/app/
```

Move the file to `~/com/app/`, and execute the file.

Go to Settings, and change the following settings:

- Email
    - Default sender: Enter personal email
    - Default delivery: Not confidential
    - Email signature
        - Enter personal signature and save
- Appearance
	- User settings
		- Week start: Sunday
- Desktop
	- Run in background: No
	- Default download path: `~/net`
	- Desktop integration: Activated
