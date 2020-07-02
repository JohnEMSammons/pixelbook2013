#!/bin/bash
localectl set-x11-keymap us chromebook
sudo apt update
sudo apt upgrade
sudo apt install -y ./*.deb
sudo apt install grub-customizer
sudo rm -f /usr/bin/kblight
sudo ln -s $PWD/kblightdb /usr/bin/kblight
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < kbdsettings
cp .xprofile ~/.
