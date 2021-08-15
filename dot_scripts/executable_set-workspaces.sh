#!/usr/bin/env bash

i3-msg "workspace 10, move workspace to output DP-0"
i3-msg "workspace 10; exec kitty"
sleep 0.2
i3-msg "workspace 5, move workspace to output DP-4"
i3-msg "workspace 5; exec kitty sh -c 'cd ~/Workspace/notes && nvim job/log.md'"
sleep 0.2
i3-msg "workspace 1, move workspace to output DP-2"
i3-msg "workspace 1; exec google-chrome-stable"
