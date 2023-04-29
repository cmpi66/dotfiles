#!/bin/bash

# Check the current battery level
battery_level=$(cat /sys/class/power_supply/BAT0/capacity)

# Send a notification if the battery level is 30% or lower
if [ "$battery_level" -le 30 ]
then
  dunstify -u critical -r 9876 "Battery is running low!" "Current level: $battery_level%"
fi

