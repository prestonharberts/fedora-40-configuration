/* extension.js
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * SPDX-License-Identifier: GPL-2.0-or-later
 */
'use strict';

const { St, Shell, Meta, Gio, GLib } = imports.gi;
const Main = imports.ui.main;
const Panel = Main.panel;
const ExtensionUtils = imports.misc.extensionUtils;
const Me = ExtensionUtils.getCurrentExtension();

class ConnectManager{
    constructor(list = []){
        this.connections = [];

        list.forEach(c => {
            let [obj, signal, callback] = c;
            this.connect(obj, signal, callback);
        });
    }

    connect(obj, signal, callback){
        this.connections.push({
            id: obj.connect(signal, callback),
            obj : obj
        })
    }

    disconnectAll(){
        this.connections.forEach(c => {
            c.obj.disconnect(c.id)
        })
    }
}

class Extension{
    constructor(){
    }

    enable(){
        this._windowSignals = new Map();

        this._connections = new ConnectManager([
            [ Main.overview, 'showing', this._update.bind(this) ],
            [ Main.overview, 'hiding', this._update.bind(this) ],
            [ Main.sessionMode, 'updated', this._update.bind(this) ],
            [ global.window_manager, 'switch-workspace', this._update.bind(this )],
            [ global.window_group, 'actor-added', this._onWindowAdded.bind(this) ],
            [ global.window_group, 'actor-removed', this._onWindowRemoved.bind(this) ]
        ]);

        for (const window of global.get_window_actors()){
            this._onWindowAdded(null, window);
        }

        this._update();
        Main.panel.add_style_class_name('floating');
    }

    disable(){
        this._connections.disconnectAll();
        this._connections = null;

        for (const [window, ids] of this._windowSignals) {
            for (const id of ids) {
                window.disconnect(id);
            }
        }
        this._windowSignals = null;
        this._overlap(false);
        Main.panel.remove_style_class_name('floating');
    }

    _onWindowAdded(container, window){
        this._windowSignals.set(window, [
            window.connect('notify::allocation', () => this._update() ),
            window.connect('notify::visible', () => this._update() ),
        ]);
        this._update();
    }

    _onWindowRemoved(container, window){
        for (const id of this._windowSignals.get(window)){
            window.disconnect(id);
        }
        this._windowSignals.delete(window);
        this._update();
    }

    _update(){
        if(Main.panel.has_style_pseudo_class('overview'))
            return this._overlap(false);
        
        const workspace = global.workspace_manager.get_active_workspace();
        const windows = workspace.list_windows().filter(window =>
            window.showing_on_its_workspace()
            && !window.is_hidden()
            && window.get_window_type() !== Meta.WindowType.DESKTOP
            // exclude Desktop Icons NG
            && window.get_gtk_application_id() !== "com.rastersoft.ding"
        );

        const scale = St.ThemeContext.get_for_stage(global.stage).scale_factor;
        let panel_top = Panel.get_transformed_position()[1];
        let panel_bottom = panel_top + Panel.get_height();
        
        let overlaps = true;
        windows.forEach(window => {
            let monitor_index = window.get_monitor();
            let primary_index = Main.layoutManager.primaryMonitor.index;
            if(monitor_index === primary_index){
                let window_y_pos = window.get_frame_rect().y;
                if(window_y_pos < panel_bottom + 2 * scale){
                    overlaps = false;
                }
            }
        })
        this._overlap(overlaps);
    }

    _overlap(b){
        b ? Main.panel.add_style_pseudo_class('floating') :
            Main.panel.remove_style_pseudo_class('floating');
    }
}

function init() {
    return new Extension();
}
