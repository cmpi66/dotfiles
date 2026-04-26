#!/bin/bash
# toggle-rss.sh

WINDOW_ID=$(niri msg windows | awk '/^Window ID/ { id=$3; sub(/:$/,"",id) } /App ID: "qutebrowser-rss"/ { print id }')

if [ -z "$WINDOW_ID" ]; then
  if [ -d ~/.config/stupid-web-rss/data/sessions ]; then
    qutebrowser --basedir ~/.config/stupid-web-rss/ --config-py ~/.config/stupid-web/config.py --desktop-file-name qutebrowser-rss &
  else
    qutebrowser --basedir ~/.config/stupid-web-rss/ --config-py ~/.config/stupid-web/config.py --desktop-file-name qutebrowser-rss rss.cmlabs.xyz &
  fi
else
  # Check if it's already focused
  FOCUSED=$(niri msg windows | awk '/^Window ID.*\(focused\)/ { id=$3; sub(/:$/,"",id) } /App ID: "qutebrowser-rss"/ { if (id) print id }')

  if [ -n "$FOCUSED" ]; then
    # Already focused — go back to previous window
    niri msg action focus-window-previous
  else
    niri msg action focus-window --id "$WINDOW_ID"
  fi
fi
