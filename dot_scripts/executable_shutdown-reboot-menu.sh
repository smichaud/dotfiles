#!/usr/bin/env bash


read -p 'Reboot (r) or shutdown (s): ' user_input
if [ "$user_input" == "r" ]; then
    shutdown -r now 
elif [ "$user_input" == "s" ]; then
    shutdown now
fi
