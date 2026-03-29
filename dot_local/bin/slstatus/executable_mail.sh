#!/bin/sh

maildir="${XDG_DATA_HOME:-$HOME/.local/share}/mail"
unread="$(find "$maildir" -type d -iname inbox -exec find {} -type f -path '*/new/*' \; 2>/dev/null | wc -l)"

pidof mbsync >/dev/null 2>&1 && icon="  "

[ "$unread" = "0" ] && [ -z "$icon" ] || echo " $unread$icon"
