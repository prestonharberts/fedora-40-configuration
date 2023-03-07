# Konsole

Install Konsole from Software. Change the following settings from the menubar:

- Toolbars shown:
  - Main toolbar: Off
  - Session toolbar: Off

Now, change the following settings under Configure Konsole:

- General
  - Process and window
    - Remember window size: Off
    - Remove window titlebar and frame: On
- Profiles
  - Create new and name "Personal"
    - General
      - General Settings
        - Initial terminal size: 80 columns; 30 rows
        - Terminal bell mode: System Bell
    - Appearance
      - Color scheme & font: Black on White
        - Font: SF Mono (after following the instructions in `sf-font.md`) 10.5pt
      - Cursor
        - Blinking > Enabled: On
      - Miscellaneous
        - Terminal contents
          - Margins: 16 px
          - Align to center: On
          -  Window > Show Hint for terminal size after resizing: Off
    - Scrolling
      - Scrollbar position: Hidden
      - Highlighting > Highlight the lines coming into view: Off
  - Select Personal, and set as default
- Tab Bar / Splitters
  - Appearance
    - Position: Above terminal area
    - Miscellaneous
      - Expand individual tab widths to full window: On
  - Behavior
    - Put new tabs: After current tab

Disable Show Menubar from the menubar. Open again when needed with `Ctrl-Shift-M`.
