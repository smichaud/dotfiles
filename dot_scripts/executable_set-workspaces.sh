#!/usr/bin/env bash

MONITOR_LEFT="DP-0"
MONITOR_MIDDLE="DP-4"
MONITOR_RIGHT="DP-2"

i3-msg "workspace 10, move workspace to output $MONITOR_MIDDLE"
i3-msg "workspace 10; exec kitty"
sleep 0.2
i3-msg "workspace 5, move workspace to output $MONITOR_RIGHT"
i3-msg "workspace 5; exec kitty sh -c 'cd ~/Workspace/notes && nvim job/log.md'"
sleep 0.2
i3-msg "workspace 1, move workspace to output $MONITOR_LEFT"
i3-msg "workspace 1; exec google-chrome-stable"
