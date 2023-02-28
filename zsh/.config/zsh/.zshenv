
export ZDOTDIR=$HOME/.config/zsh   


[ -f "$XINITRC" ] && alias startx="startx $XINITRC"

[ -f "$MBSYNCRC" ] && alias mbsync="mbsync -c $MBSYNCRC"

# if [ -e /home/chris/.nix-profile/etc/profile.d/nix.sh ]; then . /home/chris/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
