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
