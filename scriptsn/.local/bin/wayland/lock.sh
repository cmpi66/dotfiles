#!/bin/bash

nohup swayidle timeout 4 'hyprctl dispatch dpms off' \
    resume 'hyprctl dispatch dpms on' \
    &> /dev/null &

swaylock -e -F -C /home/chris/.config/swaylock/config -i /home/chris/.local/bin/lock1.jpg

pkill swayidle
