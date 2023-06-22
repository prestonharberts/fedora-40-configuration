const Shell = imports.gi.Shell;
const Mainloop = imports.mainloop;
const Main = imports.ui.main;

class Extension {
    constructor() {
        this._updateTimerId = null;
        this._handlerId = null;
    }

    enable() {
        let dateMenu = Main.panel.statusArea.dateMenu;

        // overriding setDate so that it displays the time
        dateMenu._date.setDate = (date) => {
            dateMenu._date._dayLabel.set_text(date.toLocaleFormat('%A'));

            let dateFormat = Shell.util_translate_time_string(N_("(%Y/%m/%d)"));
            let timeFormat = Shell.util_translate_time_string(N_("%-I:%M %p"));
            dateMenu._date._dateLabel.set_text(
                // date.toLocaleFormat(dateFormat) + " " + date.toLocaleFormat(timeFormat));
                // date.toLocaleFormat(timeFormat));
                date.toLocaleFormat(timeFormat) + " " + date.toLocaleFormat(dateFormat));

            dateFormat = Shell.util_translate_time_string(N_("%A %B %e %Y"));
            dateMenu._date.accessible_name =
                // date.toLocaleFormat(dateFormat) + " " + date.toLocaleFormat(timeFormat);
                // date.toLocaleFormat(timeFormat);
                date.toLocaleFormat(timeFormat) + " " + date.toLocaleFormat(dateFormat);
        };

        // constant updating of the date after opening the menu
        this._handlerId = dateMenu.menu.connect('open-state-changed', (_, isOpen) => {
            if (isOpen) {
                this._updateTimerId = Mainloop.timeout_add(100, () => {
                    dateMenu._date.setDate(new Date());
                    return true;
                });
            } else {
                Mainloop.source_remove(this._updateTimerId);
                this._updateTimerId = null;
            }
        });
    }

    disable() {
        let dateMenu = Main.panel.statusArea.dateMenu;

        // disabling the update timer
        Mainloop.source_remove(this._updateTimerId);
        this._updateTimerId = null;

        // disabling the handler
        dateMenu.menu.disconnect(this._handlerId);
        this._handlerId = null;

        // removing time from setDate
        dateMenu._date.setDate = (date) => {
            dateMenu._date._dayLabel.set_text(date.toLocaleFormat('%A'));

            let dateFormat = Shell.util_translate_time_string(N_("%B %-d %Y"));
            dateMenu._date._dateLabel.set_text(date.toLocaleFormat(dateFormat));

            dateFormat = Shell.util_translate_time_string(N_("%A %B %e %Y"));
            dateMenu._date.accessible_name = date.toLocaleFormat(dateFormat);
        };
    }
}

function init() {
    return new Extension();
}
