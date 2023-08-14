#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch polybar, using the default config location ~/.config/polybar/.
polybar mybar &

echo "Polybar launched..."
