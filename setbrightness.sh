#!/bin/bash
function up(){
    dbus-send --session --type="method_call"  --dest="org.gnome.SettingsDaemon" /org/gnome/SettingsDaemon/Power org.gnome.SettingsDaemon.Power.Screen.StepUp
}

function down(){    
    dbus-send --session --type="method_call" --dest="org.gnome.SettingsDaemon" "/org/gnome/SettingsDaemon/Power" "org.gnome.SettingsDaemon.Power.Screen.StepDown"
}

if [[ $1 = "up" ]]
then
     up
elif [[ $1 = "down" ]]
then        
    down
fi
