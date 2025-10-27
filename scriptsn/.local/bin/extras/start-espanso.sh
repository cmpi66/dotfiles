#!/bin/bash

# If espanso daemon is running, will ask to kill, else will ask to start.

if pidof espanso >/dev/null; then
  [ "$(printf "No\\nYes" | bemenu -l 2 --width-factor 0.1 -p "Turn off espanso daemon?")" = "Yes" ] && killall espanso && notify-send "espanso daemon disabled."
else
  ifinstalled espanso || exit
  [ "$(printf "No\\nYes" | bemenu -l 2 --width-factor 0.1 -p "Turn on espanso daemon?")" = "Yes" ] && espanso service start --unmanaged && notify-send "espanso daemon enabled."
fi
