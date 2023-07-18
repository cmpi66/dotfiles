#!/bin/env bash

# A simple lockscreen script that even works while closing the lid, on openrc. No extra services.

pkill swayidle 


swayidle -w \
    timeout 300 'swaylock -e -F -C /home/chris/.config/swaylock/config -i /home/chris/.local/bin/2770299.png' \
         resume 'hyprctl dispatch dpms on"' \


