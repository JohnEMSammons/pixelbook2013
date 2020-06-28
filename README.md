# pixelbook2013
Scripts and details for putting ubuntu on a pixelbook 2013

Basic details include getting mrchromebox's firmware
installing ubuntu 20.04
setting up keyboard:
localectl set-x11-keymap us chromebook

get the galliumos kernel for the propper support of sleep:
wget https://apt.galliumos.org/galliumos.gpg
sudo apt-key add galliumos.gpg

sudo vim /etc/apt/sources.list.d/galliumos.list
deb     http://apt.galliumos.org xenon main
deb-src http://apt.galliumos.org xenon main

apt update
apt upgrade
sudo apt install galliumos-sandy

the kernel should be installed with the above command
sudo apt search linux-image-4.8.17-galliumos

update initram and grub

sudo update-grub
sudo update-initramfs -u -k all

reboot

install grub_customizer
sudo apt install grub-customizer
use grub customizer to set the 4.8.17 image as the default selection

setting up the keyboard backlight control
place the included kblightdb script in a user folder (~/scripts/kblightdb)
link the file using the fully qualified name:
ln -s /usr/local/bin/kblight /home/<username>/scripts/kblightdb


test the script:

kblight max
keyboard backlight should be full
kblight min 
keyboard backlight should be off
kblight t 
keyboard light will toggle from min to max

set up keyboard shortcut using the included keyboard file:
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < kbdsettings

add .xprofile to ~/ directory to get custom resolution support.
