#!/bin/env bash

# A simple lockscreen script that even works while closing the lid, on openrc. No extra services.

pkill swayidle 


swayidle -w \
    timeout 600 'swaylock -e -F -C /home/chris/.config/swaylock/config -i /home/chris/.local/bin/lock.jpg' 


