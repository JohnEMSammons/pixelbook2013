#!/bin/bash
localectl set-x11-keymap us chromebook
sudo apt update
sudo apt upgrade
./ubuntu-mainline-kernel.sh -i 5.7.7 -do -p .
sudo apt install -y ./*.deb
sudo apt install grub-customizer
sudo rm -f /usr/bin/kblight
sudo ln -s $PWD/kblightdb /usr/bin/kblight
./importkeys.sh
cp .xprofile ~/.
