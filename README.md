# pixelbook2013
Scripts and details for putting ubuntu on a pixelbook 2013

Basic details include getting mrchromebox's firmware


installing ubuntu 20.04

./setup.sh

use grub customizer to set the 4.8.17 image as the default selection

possible additions:

XF86AudioLowerVolume

XF86AudioRaiseVolume

XF86AudioMute

XF86Forward

XF86Back

XF86LogOff

XF86PowerOff

name: Brightness Up 
command: xdotool key --clearmodifiers XF86MonBrightnessUp

name: Brightness Down 
command: xdotool key --clearmodifiers XF86MonBrightnessDown
