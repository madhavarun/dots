#!/bin/bash

# Terminate already running instances
killall 'picom'

# Wait until the processes have been shut down
while pgrep -x picom >/dev/null; do sleep 1; done

# reload picom 

picom --config /home/aurniox/.config/bspwm/picom/picom.conf --experimental-backends
