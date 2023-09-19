# Dell XPS Touchpad

If there are issues with the Dell XPS's touchpad (lag, jumpiness, non-responsiveness, acceleration issues), complete the following instructions:

1. Run the following command in terminal:

```
[prestonharberts@proverb ~]$ fwupdmgr get-devices | grep -i touchpad -B2 -A11
├─DLL0945:00 04F3:311C:
│     Device ID:          0eeea9b449795ed307fcba6fa46f596d9679b87b
│     Summary:            Touchpad
│     Current version:    0x000b
│     Bootloader Version: 0x0001
│     Vendor:             ELAN Microelectronics (HIDRAW:0x04F3)
│     GUIDs:              46598f8d-5777-50c4-8da9-cda0cc8bbc26 ← HIDRAW\VEN_04F3&DEV_311C
│                         d00322f0-ff1f-5458-9c64-8a771fb0b72e ← HIDRAW\VEN_04F3&DEV_311C&MOD_0000
│                         4f9fe0ae-f26e-5c1d-8a4e-a7506fb02f96 ← ELANTP\ICTYPE_13
│                         6cf7ae6a-8b98-5b63-9af8-b23b932f65de ← ELANTP\ICTYPE_13&MOD_0000
│                         ac3627a9-8463-5e63-b6b1-be9e0bcf27d2 ← ELANTP\ICTYPE_13&MOD_0000&DRIVER_HID
│     Device Flags:       • Internal device
│                         • Updatable
│   
```

2. Download `0b.bin` if your Device ID is `0x000b` or `oc.bin` if your Device ID is `0x000c` from [here](https://gist.github.com/m-bartlett/78d0748b279b7c4c2efd9c93c7496405).
3. Run `sudo fwupdtool install-blob path/to/firmware.bin <your device id>`

Source: https://gitlab.freedesktop.org/libinput/libinput/-/issues/618#note_1837620
