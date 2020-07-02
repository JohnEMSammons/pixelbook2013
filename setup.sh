#!/bin/bash
localectl set-x11-keymap us chromebook
rm galliumos.gpg*
wget https://apt.galliumos.org/galliumos.gpg
sudo apt-key add galliumos.gpg
sudo cp galliumos.list /etc/apt/sources.list.d/.
sudo apt update
sudo apt upgrade
sudo apt install galliumos-sandy
sudo apt install linux-image-4.8.17-galliumos
sudo update-grub
sudo update-initramfs -u -k all
sudo apt install grub-customizer
sudo rm -f /usr/bin/kblight
sudo ln -s $PWD/kblightdb /usr/bin/kblight
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < kbdsettings
cp .xprofile ~/.
