# Rhythmbox

Close the top box when asked to select the music location.

Open the application menu, and change the following settings:

- View
  - Play Queue in Side Pane: On

Open Preferences, and change the following settings:

- General
  - Visible Columns
    - Year: On
    - Rating: On
- Music
  - Library Structure
    - Preferred format: FLAC
- Plugins
  - Song Lyrics: On
    - Preferences
      - Search engines
        - TerraBrasil: On
        - Dark Lyrics: On
        - Jlyric: On
        - Jetlyrics: On
      - Lyrics folder: `~/mus/lrx`
  - Web remote control
    - Preferences
      - Access key: Create password

Run the following if you have already synced playlists and ratings with Tresorit:

```
rm ~/.local/share/rhythmbox/playlists.xml ~/.local/share/rhythmbox/rhythmdb.xml
ln -s ~/mus/rhythmbox/playlists.xml ~/.local/share/rhythmbox/
ln -s ~/mus/rhythmbox/rhythmdb.xml ~/.local/share/rhythmbox/
```

Run the following to sync playlists and ratings with Tresorit for the first time:

```
mkdir ~/mus/rhythmbox
mv ~/.local/share/rhythmbox/playlists.xml ~/.local/share/rhythmbox/rhythmdb.xml ~/mus/rhythmbox/
ln -s ~/mus/rhythmbox/playlists.xml ~/.local/share/rhythmbox/
ln -s ~/mus/rhythmbox/rhythmdb.xml ~/.local/share/rhythmbox/
```
