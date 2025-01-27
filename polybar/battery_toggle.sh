#!/bin/bash

# Path to the state file
STATE_FILE="$HOME/.config/polybar/battery_state"

# Initialize state file if it doesn't exist
if [ ! -f "$STATE_FILE" ]; then
    echo "0" > "$STATE_FILE"
fi

# Handle click event to toggle state
if [ "$1" == "next" ]; then
    STATE=$(cat "$STATE_FILE")
    STATE=$(( (STATE + 1) % 3 ))
    echo "$STATE" > "$STATE_FILE"
    exit 0
fi

# Read current state
STATE=$(cat "$STATE_FILE")

# Get battery information
BATTERY_INFO=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0)

# Function to extract field values
get_field() {
    local value=$(echo "$BATTERY_INFO" | grep -E "^\s*$1:\s" | head -n1 | awk -F ':' '{print $2}' | xargs)
    echo "${value:-N/A}"
}

# Get battery state
BATTERY_STATE=$(get_field "state")

case "$STATE" in
    0)
        # Format: -12.269W | 34.31Wh / 42.88Wh
        ENERGY_RATE=$(get_field "energy-rate")
        ENERGY_NOW=$(get_field "energy")
        ENERGY_FULL=$(get_field "energy-full")
        OUTPUT="$ENERGY_RATE | $ENERGY_NOW / $ENERGY_FULL"
        ;;
    1)
        # Format: 2.8 hours (only if discharging)
        if [[ "$BATTERY_STATE" == "discharging" ]]; then
            TIME_TO_EMPTY=$(get_field "time to empty")
            OUTPUT="$TIME_TO_EMPTY"
        else
            OUTPUT="N/A (Battery $BATTERY_STATE)"
        fi
        ;;
    2)
        # Format: 80%
        PERCENTAGE=$(get_field "percentage")
        OUTPUT="$PERCENTAGE"
        ;;
esac

echo "$OUTPUT"
