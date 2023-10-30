const Gio = imports.gi.Gio;
const Meta = imports.gi.Meta;
const Main = imports.ui.main;

let originalWallpaperUri = null;
let wallpaperSettings = new Gio.Settings({ schema: 'org.gnome.desktop.background' });

function setWallpaper(uri) {
    wallpaperSettings.set_string('picture-uri', uri);
}

function onFocusChanged() {
    const focusedWindow = global.display.focus_window;

    if (focusedWindow) {
        // A window is focused, change the wallpaper to black.
        setWallpaper('file:///usr/share/backgrounds/gnome/black.png');
    } else {
        // No window is focused, revert the wallpaper to the original.
        setWallpaper(originalWallpaperUri);
    }
}

function init() {
    originalWallpaperUri = wallpaperSettings.get_string('picture-uri');
}

function enable() {
    onFocusChanged();
    global.display.connect('notify::focus-window', onFocusChanged);
}

function disable() {
    // Disconnect the event listener and restore the original wallpaper when the extension is disabled.
    global.display.disconnect('notify::focus-window', onFocusChanged);
    setWallpaper(originalWallpaperUri);
}
