#!/bin/bash

export BEMENU_OPTS='--line-height 30 --fb "#24273a" --ff "#cad3f5" --nb "#24273a" --nf "#cad3f5" --tb "#24273a" --hb "#24273a" --tf "#ed8796" --hf "#eed49f" --af "#cad3f5" --ab "#24273a"'

# export BEMENU_OPTS='-i --center --width-factor 0.3.5. --line-height 40 --list 10 --border 2 --border-radius 8 --bdr "#8aadf4" --fb "#24273a" --ff "#cad3f5" --nb "#24273a" --nf "#cad3f5" --tb "#24273a" --hb "#24273a" --tf "#ed8796" --hf "#eed49f" --af "#cad3f5" --ab "#24273a"'

# so remvoe width factor and it actually makes it bigger, which means this option was obeyed
# removing line height breaks it, maybe it needs list as well?
# so remvoing list and line height it doest obey colors i guess its becasue of the border and border radius
# so jsut blank with center and colors breaks the password but colors work and its center but not vertical
# and jsut center with line hieght and list also jsut break it. it ignorres the colors, maybe list is wrong in this sceneario
# and only center works with all the colors but its still horizontal and a really skinny line. theres something going on here
# and just line-height also works. Im jsut going to leave it with that optin for now. no need to go crazy, ROI and time is lost on this. Big issue on pinentry and gpg unlock is fixed with this program.

exec /usr/bin/pinentry-bemenu "$@"
