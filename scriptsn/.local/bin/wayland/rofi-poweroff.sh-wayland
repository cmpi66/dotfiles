#! /bin/sh

chosen=$(printf "Power Off\nRestart\nLock" | rofi -dmenu -i -theme-catppuccin  '@import"power.rasi"')

case "$chosen" in
 "Power Off") poweroff ;;
 "Restart") reboot ;;
 "Hibernate") hibernate ;;
 "Lock") i3lock -C -i /home/chris/.local/bin/arch-wallpaper.jpg ;;
 *) exit 1 ;;
esac
