#!/bin/bash
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < kbdsettings
cp .xprofile ~/.
