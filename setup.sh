#!/bin/bash
localectl set-x11-keymap us chromebook
rm galliumos.gpg*
wget https://apt.galliumos.org/galliumos.gpg
sudo apt-key add galliumos.gpg
sudo cp galliumos.list /etc/apt/sources.list.d/.
sudo apt update
sudo apt upgrade
sudo apt install galliumos-sandy
sudo update-grub
sudo update-initramfs -u -k all
sudo apt install grub-customizer
file=/usr/bin/kblight
[ -e "$file" ] && sudo rm "$file"
sudo ln -s $(pwd)/kblightdb /usr/bin/kblight 
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < kbdsettings
cp .xprofile ~/.
