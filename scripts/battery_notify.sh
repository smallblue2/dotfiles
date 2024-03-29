#!/bin/bash

export DISPLAY=":0"
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u)/bus"

# Get the battery path & info
battery_path=$(upower -e | grep 'battery')
battery_info=$(upower -i $battery_path)

# Extract the percentage and state
battery_level=$(echo "$battery_info" | grep 'percentage' | grep -o '[0-9]\+')
battery_state=$(echo "$battery_info" | grep 'state' | awk '{print $2}')

# Notification conditions
if [[ "$battery_state" == "discharging" && "$battery_level" -le 20 ]]; then
    dunstify -u critical "Battery low" "Battery level is ${battery_level}%!"
elif [[ "$battery_state" == "discharging" && "$battery_level" -le 10 ]]; then
    dunstify -u critical "Battery very low" "Battery level is ${battery_level}%!"
fi
