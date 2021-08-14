#!/usr/bin/env bash

LAPTOP_MONITOR="eDP-1-1"

if [ "$1" == "up" ]; then
    # Decrease screen brightness by 10%
    brightness="$(xrandr --verbose | grep -i brightness | awk '{print $2}')" && result=$(echo "$brightness-0.1" | bc -l) && xrandr --output "$LAPTOP_MONITOR" --brightness $result && notify-send -h string:bgcolor:#000000 -h string:fgcolor:#ffffff "Brightness: $result"
elif [ "$1" == "down" ]; then
    # Increase screen brightness by 10%
    brightness="$(xrandr --verbose | grep -i brightness | awk '{print $2}')" && result=$(echo "$brightness+0.1" | bc -l) && xrandr --output "$LAPTOP_MONITOR" --brightness $result && notify-send -h string:bgcolor:#000000 -h string:fgcolor:#ffffff "Brightness: $result"
fi
