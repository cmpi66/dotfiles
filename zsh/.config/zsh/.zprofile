#auto startx

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
# [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx ~/.config/chadwm/scripts/run.sh
