#!/usr/bin/env bash

# You can use the xev command to get the key name

if [ "$1" == "planck_fr" ]; then
    setxkbmap ca fr -option
    notify-send --icon="~/Pictures/flyingphoque.png" "Keyboard" "CA FR (for planck)"
elif [ "$1" == "planck_us" ]; then
    setxkbmap us -option
    notify-send --icon="~/Pictures/flyingphoque.png" "Keyboard" "US (for planck)"
elif [ "$1" == "staggered_fr" ]; then
    # current_keyboard="$(setxkbmap -query | grep layout | tr -d ' ' | cut -d: -f 2)"
    setxkbmap ca fr
    notify-send --icon="~/Pictures/flag-canada.png" "Keyboard" "Set to 'ca fr'"
    setxkbmap -option caps:swapescape
    setxkbmap -option compose:menu
    setxkbmap -option altwin:swap_lalt_lwin
    xmodmap -e "keycode 108 = Alt_R"
    numlockx on
elif [ "$1" == "staggered_us" ]; then
    setxkbmap us
    notify-send --icon="~/Pictures/flag-usa.png" "Keyboard" "Set to 'us'"
    setxkbmap -option caps:swapescape
    setxkbmap -option compose:menu
    setxkbmap -option altwin:swap_lalt_lwin
    xmodmap -e "keycode 108 = Alt_R"
    numlockx on
fi

xset r rate 200
# Reduce razer mouse speed:
# mouse_xinput_id="$(xinput --list | grep -m1 "Razer Razer DeathAdder Elite" | awk '{print $7}' | sed 's/id=//')"
# xinput list-props "$mouse_xinput_id"
# xinput --set-prop $mouse_xinput_id 355 -0.8
