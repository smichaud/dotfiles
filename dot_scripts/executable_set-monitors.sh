#!/usr/bin/env bash

if [ "$(hostname)" == "zen" ]; then
    MONITOR_LEFT="DP-1-1-2"
    MONITOR_MIDDLE="DP-1-1-1"
    MONITOR_RIGHT="eDP-1"
    xrandr --output $MONITOR_RIGHT --mode 1600x900 --output $MONITOR_MIDDLE --left-of $MONITOR_RIGHT --output $MONITOR_LEFT --left-of $MONITOR_MIDDLE
elif [ "$(hostname)" == "smdesktop" ]; then
    MONITOR_LEFT="DP-2"
    MONITOR_MIDDLE="DP-0"
    MONITOR_RIGHT="DP-4"
    xrandr --output $MONITOR_MIDDLE --primary
    xrandr --output $MONITOR_LEFT --left-of $MONITOR_MIDDLE --output $MONITOR_RIGHT --right-of $MONITOR_MIDDLE
elif [ "$(hostname)" == "machine" ]; then
    MONITOR_LEFT="DP-2"
    MONITOR_MIDDLE="DP-0"
    MONITOR_RIGHT="DP-4"
    xrandr --output $MONITOR_LEFT --left-of $MONITOR_MIDDLE --output $MONITOR_RIGHT --right-of $MONITOR_MIDDLE
fi
