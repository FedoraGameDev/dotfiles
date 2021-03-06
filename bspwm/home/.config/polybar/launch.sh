#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
sleep 1

# Launch bar1
polybar --config="/home/fedora-dev/.config/polybar/config" bar1 -r &

echo "Bars launched..."