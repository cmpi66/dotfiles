#!/bin/env bash

# A simple lockscreen script that even works while closing the lid, on openrc. No extra services.

export DISPLAY=:0

pkill swayidle 


swayidle -w \
    timeout 300 'swaylock -e -F -C /home/chris/.config/swaylock/config -i /home/chris/.local/bin/lock1.jpg' \
    timeout 600 'hyprctl dispatch dpms off' \
         resume 'hyprctl dispatch dpms on' \
    before-sleep 'swaylock -e -F -C /home/chris/.config/swaylock/config -i /home/chris/.local/bin/lock1.jpg'


