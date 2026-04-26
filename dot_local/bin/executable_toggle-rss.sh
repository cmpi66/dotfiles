#!/bin/bash
# toggle-rss.sh

STATE_FILE="/tmp/rss-toggle-state"

WINDOW_ID=$(niri msg windows | awk '/^Window ID/ { id=$3; sub(/:$/,"",id) } /App ID: "qutebrowser-rss"/ { print id }')

if [ -z "$WINDOW_ID" ]; then
  if [ -d ~/.config/stupid-web-rss/data/sessions ]; then
    qutebrowser --basedir ~/.config/stupid-web-rss/ --config-py ~/.config/stupid-web/config.py --desktop-file-name qutebrowser-rss &
  else
    qutebrowser --basedir ~/.config/stupid-web-rss/ --config-py ~/.config/stupid-web/config.py --desktop-file-name qutebrowser-rss rss.cmlabs.xyz &
  fi
else
  # Get currently focused window ID
  FOCUSED_ID=$(niri msg windows | awk '/^Window ID.*\(focused\)/ { id=$3; sub(/:$/,"",id); print id }')

  if [ "$FOCUSED_ID" = "$WINDOW_ID" ]; then
    # RSS is focused — go back to saved window
    if [ -f "$STATE_FILE" ]; then
      PREV_ID=$(cat "$STATE_FILE")
      niri msg action focus-window --id "$PREV_ID"
    fi
  else
    # Save current window, then focus RSS
    echo "$FOCUSED_ID" >"$STATE_FILE"
    niri msg action focus-window --id "$WINDOW_ID"
  fi
fi
