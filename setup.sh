#!/bin/bash
localectl set-x11-keymap us chromebook
sudo apt update
sudo apt upgrade
./ubuntu-mainline-kernel.sh -i 5.7.7 -do -p .
sudo apt install -y ./*.deb
sudo apt install -y grub-customizer
sudo apt install -y build-essential git dkms
git clone https://github.com/brektrou/rtl8821CU.git
cd rtl8821CU
chmod +x dkms-install.sh
sudo ./dkms-install.sh
sudo modprobe 8821cu
sudo rm -f /usr/bin/kblight
sudo ln -s $PWD/kblightdb /usr/bin/kblight
./importkeys.sh
cp .xprofile ~/.
sudo apt install -y libcanberra-gtk-module libcanberra-gtk3-module
