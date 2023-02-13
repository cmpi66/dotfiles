#! /bin/sh

chosen=$(printf "Power Off\nRestart\nLock" | rofi -dmenu -i   '@import"power.rasi"')

case "$chosen" in
  "Power Off") doas openrc-shutdown -p now ;;
 "Restart") doas openrc-shutdown -r now ;;
 "Lock") i3lock -C -i /home/chris/.local/bin/arch-wallpaper.jpg ;;
 *) exit 1 ;;
esac
