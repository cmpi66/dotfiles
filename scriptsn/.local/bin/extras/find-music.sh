#!/usr/bin/env bash

file=$(fd -e .flac -e .mp3 -e .m4a -e .opus . ~/.local/share/music -p -t f | sort | sed "s|^/home/chris/.local/share/music/||" | rofi -dmenu -i -l 1) || exit 0
#
notify-send "Playing $file" && mpc insert "$file" && mpc next >/dev/null && mpc play >/dev/null
