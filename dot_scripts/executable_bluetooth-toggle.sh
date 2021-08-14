#!/usr/bin/env bash

device_name='WH-1000XM2'
line=$(echo -e  'list' | bluetoothctl | grep Device.*$device_name)
address=$(echo $line | awk '{print $5}')
is_connected=$(echo -e  'list' | bluetoothctl | grep $device_name.*list)

if [ -z "$is_connected" ]; then
    notify-send --icon=gtk-info --urgency=low "Bluetooth" "Connecting to WH-1000XM2" -h string:x-canonical-private-synchronous:anything
    echo -e "connect $address" | bluetoothctl
else
    notify-send --icon=gtk-info --urgency=low "Bluetooth" "Disconnecting to WH-1000XM2" -h string:x-canonical-private-synchronous:anything
    echo -e "disconnect $address" | bluetoothctl
fi
