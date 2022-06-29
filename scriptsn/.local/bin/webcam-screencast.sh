#!/bin/bash
pkill -f /dev/video0
mpv --geometry=0.0 --autofit=30% --untimed /dev/video0 & ffmpeg -y -f x11grab -s 1920x1200 -i :0.0 -f alsa -i default screen.mp4
