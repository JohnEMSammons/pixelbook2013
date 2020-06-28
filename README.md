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

set up keyboard shortcut:
in ubuntu settinggs:
  keyboard shortcuts

add a shortcut called kblight up
command : kblight +10
keyboard shortcut:
left alt + [

add a shortcut called kblight up
command : kblight -10
keyboard shortcut:
left alt + ]

add a shortcut called kblight up
command : kblight t
keyboard shortcut:
left alt + \


add new modes for more compatible resolution:


xrandr --newmode "1920x1280_60.00"  206.25  1920 2056 2256 2592  1280 1283 1293 1327 -hsync +vsync

xrandr --newmode "1600x1066_60.00"  142.00  1600 1704 1872 2144  1066 1069 1079 1106 -hsync +vsync

xrandr --newmode "1440x960_60.00"  113.75  1440 1528 1672 1904  960 963 973 996 -hsync +vsync

xrandr --addmode eDP-1 1920x1280_60.00

xrandr --addmode eDP-1 1600x1066_60.00

xrandr --addmode eDP-1 1440x960_60.00

