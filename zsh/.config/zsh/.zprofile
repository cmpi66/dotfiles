#
#auto startx

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx "$XINITRC"
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx ~/.config/x11/xinitrc
# [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx ~/.config/chadwm/scripts/run.sh
#
# Start graphical server on user's current tty if not already running.
# [ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "$XINITRC"
