#!/bin/bash

# create css file
touch ~/.config/gtk-3.0/gtk.css

#append css overrides
cat <<EOF >> ~/.config/gtk-3.0/gtk.css
.header-bar.default-decoration {
        padding-top: 0px;
        padding-bottom: 0px;
    }

.header-bar.default-decoration .button.titlebutton {
    padding-top: 0px;
    padding-bottom: 0px;
}

/* No line below the title bar */
.ssd .titlebar {
    border-width: 0;
    box-shadow: none;
}
EOF

#restart gnome shell
gnome-shell -r &
disown
