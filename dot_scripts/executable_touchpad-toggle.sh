#!/usr/bin/env bash

device_id="$(xinput --list | grep 'Asus TouchPad' | cut -d'=' -f2 | awk '{print $1}')"
property_name="Device\sEnabled"
property_status="$(xinput --list-props $device_id | grep $property_name | cut -d':' -f2)"

if [ $property_status -eq "1" ] ; then
    xinput -set-prop $device_id "Device Enabled" 0
    notify-send --icon=gtk-info --urgency=low "Touchpad" "Disabled" -h string:x-canonical-private-synchronous:anything
else
    xinput -set-prop $device_id "Device Enabled" 1
    notify-send --icon=gtk-info --urgency=low "Touchpad" "Enabled" -h string:x-canonical-private-synchronous:anything
fi
 
