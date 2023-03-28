#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
# polybar left-workspace 2>&1 | tee -a /tmp/polybar.log & disown
# polybar left-workspace &
# polybar bar2 &
# polybar bar3 &
polybar main &
polybar time &
polybar vol &
polybar cpu &
polybar memory &
