#!/bin/sh

 if [ "$(bluetoothctl info)" != "Missing device address argument" ]; then
      icon=" ^c#c6a0f6^ ^b#1e1e2e^  "
    else
      icon=" ^b#1e1e2e^ ^b#1e1e2e^  "
    fi

  printf "%s\\n" "$icon"
