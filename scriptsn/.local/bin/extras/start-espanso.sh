#!/bin/bash

# If espanso daemon is running, will ask to kill, else will ask to start.

if pidof espanso >/dev/null; then
  [ "$(printf "No\\nYes" | bemenu -p "Turn off espanso daemon?")" = "Yes" ] && killall espanso && notify-send "espanso daemon disabled."
else
  ifinstalled espanso-wayland || exit
  [ "$(printf "No\\nYes" | bemenu -p "Turn on espanso daemon?")" = "Yes" ] && espanso service start --unmanaged && notify-send "espanso daemon enabled."
fi
