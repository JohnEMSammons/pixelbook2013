# pixelbook2013
Scripts and details for putting ubuntu on a pixelbook 2013

Basic details include getting mrchromebox's firmware


installing ubuntu 20.04

./setup.sh

use grub customizer to set the 5.7.7 image as the default selection



Current Details of setp:

added latest kernel for sleep support of chrombook devices

added kernel module for support of cudy add on usb ethernet module

added chromebook keyboard setting to locale so that the keyboard works as it should

f1 = back, super + f1 = f1

f2 = forward, super + f2 = f2

f3 = reload, super + f3 = f3

f4 = f11, modifier + f4 = f4 (alt f4 still closes window)

f5 = F5

f6 = brightness down, super + f6 = f6

f7 = brightness up, super + f7 = f7

f8 = audio mute, super + f8 = f8

f9 = audio down, super + f9 = f9

f10 = audio up, super + f10 = f10

alt + backspace = delete

alt + up = prior

alt + down = next

alt + right = end

alt + search key(super) = caps lock

see chromebook section of /usr/share/X11/xkb/symbols/inet for more information

added keybiard backlight control:

super+[ = keyboard backlight down

super+] = keyboard backlight up

super+/ = keyboard backlight toggle



added canniberra packages for java

