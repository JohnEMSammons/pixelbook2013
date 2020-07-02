#!/bin/bash
localectl set-x11-keymap us chromebook
sudo apt update
sudo apt upgrade
sudo apt install -y ./linux-headers-5.0.6-050006_5.0.6-050006.201904030534_all.deb ./linux-headers-5.0.6-050006-generic_5.0.6-050006.201904030534_amd64.deb ./linux-image-unsigned-5.0.6-050006-generic_5.0.6-050006.201904030534_amd64.deb ./linux-modules-5.0.6-050006-generic_5.0.6-050006.201904030534_amd64.deb
sudo apt install grub-customizer
sudo rm -f /usr/bin/kblight
sudo ln -s $PWD/kblightdb /usr/bin/kblight
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < kbdsettings
cp .xprofile ~/.
