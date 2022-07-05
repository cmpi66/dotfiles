#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


## Gnome keyring for auto gpg test
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

# lxsession &
# Clear caps lock key, no longer using it. Replaced with escape. This command doesnt save in .Xmodmap.

xmodmap -e 'clear lock' &
# Dont need the xrandr command anymore. Using lukes display script
# xrandr --output eDP1 --auto --output DP1 --primary --left-of eDP1 &  

xidle &
# exec ~/.local/bin/xidle &
xinput set-prop "DLL096D:01 06CB:CDE6 Touchpad" "Coordinate Transformation Matrix" 3.8 0 0 0 3.8 0 0 0 1 &
clipmenud &
dunst &
mpd ~/.config/mpd/mpd.conf &
# exec /usr/bin/sxhkd &
exec slstatus &
setbg &
redshift &
picom --experimental-backend &
syncthing &

exec dwm
