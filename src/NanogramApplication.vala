/*
 *  Copyright (C) 2021 LaboMoose
 *
 *  This program or library is free software; you can redistribute it
 *  and/or modify it under the terms of the GNU Lesser General Public
 *  License as published by the Free Software Foundation; either
 *  version 3 of the License, or (at your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 *  Lesser General Public License for more details.
 */


public class NanogramApplication : Gtk.Application {
    public NanogramApplication () {
        Object (
            application_id: "com.github.labomoose.nanogram",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this) {
            default_width = 800,
            default_height = 600,
            title = "Nanogram"
        };

        var grid = new Gtk.Grid () {
            row_spacing = 0,
            column_spacing = 0
        };
        var hello_label = new Gtk.Label (null);
        var hello_button = new Gtk.Button.with_label ("Say hello");
        hello_button.clicked.connect (() => {
            hello_label.label = "Hello world!";
            hello_button.sensitive = false;
        });
        grid.attach (hello_button, 0, 0, 1, 1);
        grid.attach_next_to (hello_label, hello_button,
                             Gtk.PositionType.RIGHT, 1, 1);

        var rotate_label = new Gtk.Label ("Horizontal");
        var rotate_button = new Gtk.Button.with_label ("Rotate");
        rotate_button.clicked.connect (() => {
            rotate_label.angle = 90;
            rotate_label.label = "Vertical";
            rotate_button.sensitive = false;
        });
        grid.attach (rotate_button, 0, 1);
        grid.attach_next_to (rotate_label, rotate_button,
                             Gtk.PositionType.RIGHT, 1, 1);

        main_window.add (grid);

        main_window.show_all ();
    }
}

int main(string[] args) {
    return new NanogramApplication ().run (args);
}
