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

## This is to run gpg-agent on non systemd distros. Its needed for pam-gnupg
if [ -x /usr/bin/gpg-agent ]; then
 eval "$(/usr/bin/gpg-agent --daemon)"
fi


# This Luke script is better than my approach of getting rid of caps lock, since he also makes it a dual key while held down. (super)
# remaps &
genzfs &
remapd &
unclutter &
xidle &
xinput set-prop "DLL096D:01 06CB:CDE6 Touchpad" "Coordinate Transformation Matrix" 3.8 0 0 0 3.8 0 0 0 1 &
clipmenud &
dunst &
mpd ~/.config/mpd/mpd.conf &
# exec /usr/bin/sxhkd &
exec slstatus &
setbg &
redshift &
picom --experimental-backend &
syncthing --no-browser &
# trayer-srg --edge bottom --align center --SetDockType true --SetPartialStrut true --padding 6 --expand true --width 11 --transparent true --alpha 0 --tint 0x24283b --height 30 --distance 8 &
# exec dbus-launch --exit-with-session dwm
# exec dwm
exec dbus-launch --sh-syntax --exit-with-session dwm
