#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do 
    sleep 1;
done

mon='HDMI-1-1'
#mon='eDP-1-1'
MONITOR=$mon polybar -r main 
