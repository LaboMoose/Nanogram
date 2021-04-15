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
        var test_button = new Gtk.Button.with_label ("Click me!") {
            margin = 12
        };
        test_button.clicked.connect (() => {
            test_button.label = "Hello World!";
            test_button.sensitive = false;
        });

        var main_window = new Gtk.ApplicationWindow (this) {
            default_width = 800,
            default_height = 600,
            title = "Nanogram"
        };

        main_window.add (test_button);
        main_window.show_all ();
    }
}

int main(string[] args) {
    return new NanogramApplication ().run (args);
}
