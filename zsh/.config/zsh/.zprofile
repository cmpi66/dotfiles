export PATH="$PATH:${$(find ~/.local/bin/ -type d -printf %p:)%%:}"

#XDG
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CONFIG_HOME=$HOME/.config/
export XDG_CACHE_HOME=$HOME/.cache/
export XDG_DATA_HOME=$HOME/.local/share
export XDG_DOWNLOAD_DIR=$HOME/dl
export ZDOTDIR=$HOME/.config/zsh   

export PATH="$PATH:/$HOME/.local/appimages"

## Stole this from luke. Make every sub directory from bin to path. 
# export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')" 
export PATH="$PATH:/$HOME/.local/share/cargo/bin"

## Since im using fish i have to keep the xdg here. zsh-exports doesnt get read. 

export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="librewolf"
export MOVPLAY="mpv"
export TERM=xterm-256color
export PICVIEW="imv"


# ~/ Clean up:
#export MANPATH=/usr/share/man:/usr/local/share/man:$HOME/.nix-profile/share/man
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/shell/inputrc"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export LYNX_CFG_PATH="$XDG_CONFIG_HOME"/lynx.cfg
export LESSHISTFILE="-"
export NOTMUCH_CONFIG=$XDG_CONFIG_HOME/notmuch/default/config
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export URLVIEW_CONFIG="$XDG_CONFIG_HOME/urlview/config"
export GOPATH="$XDG_DATA_HOME/go"
# export GIT_CONFIG="$XDG_CONFIG_HOME/git/config" ## This breaks aur packages gives "ERROR not a clone of 'x repo'"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/.password-store"
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"
export HISTFILE="$XDG_DATA_HOME/zsh/history"
# export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export MBSYNCRC="${XDG_CONFIG_HOME:-$HOME/.config}/mbsync/config"
export STARDICT_DATA_DIR="$XDG_DATA_HOME"/dic
export _JAVA_AWT_WM_NONREPARENTING=1 # Fix for Java applications in dwm
export CONDARC="$XDG_CONFIG_HOME/conda/condarc"
export HISTFILE="${XDG_STATE_HOME}"/bash/history
export QT_QPA_PLATFORMTHEME="gtk2" # Have QT use gtk2 theme.
export ANSIBLE_HOME="${XDG_CONFIG_HOME}/ansible"
export ANSIBLE_CONFIG="${XDG_CONFIG_HOME}/ansible.cfg"
export ANSIBLE_GALAXY_CACHE_DIR="${XDG_CACHE_HOME}/ansible/galaxy_cache"
# export HISTFILE="$XDG_DATA_HOME/history"
# export TMUX_TMPDIR="$XDG_RUNTIME_DIR" # can't attach to tmux ssh sessions, since it looks for the /tmp dir.
export W3M_DIR="$XDG_DATA_HOME"/w3m
export PATH=~/.local/.npm-global/bin:$PATH
export N_PREFIX="$HOME/.local/n"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export SUDO_ASKPASS="$HOME/.local/bin/dmenupass" #xorg
export MOZ_USE_XINPUT2="1" # Mozilla smooth scrolling/touchpads.
# export BEMENU_OPTS='-i --center --width-factor 0.3.5 --line-height 40 --list 10 --border 2 --border-radius 8 --bdr "#7aa2f7" --fb "#24283b" --ff "#c0caf5" --nb "#24283b" --nf "#c0caf5" --tb "#24283b" --hb "#24283b" --tf "#f7768e" --hf "#e0af68" --af "#c0caf5" --ab "#24283b"'
# export BAT_THEME="tokyonight-storm"
# export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
#   --highlight-line \
#   --info=inline-right \
#   --ansi \
#   --layout=reverse \
#   --border=none \
#   --color=bg+:#2e3c64 \
#   --color=bg:#1f2335 \
#   --color=border:#29a4bd \
#   --color=fg:#c0caf5 \
#   --color=gutter:#1f2335 \
#   --color=header:#ff9e64 \
#   --color=hl+:#2ac3de \
#   --color=hl:#2ac3de \
#   --color=info:#545c7e \
#   --color=marker:#ff007c \
#   --color=pointer:#ff007c \
#   --color=prompt:#2ac3de \
#   --color=query:#c0caf5:regular \
#   --color=scrollbar:#29a4bd \
#   --color=separator:#ff9e64 \
#   --color=spinner:#ff007c \
# "

if [ -z "$WAYLAND_DISPLAY" ] && [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec dbus-run-session Hyprland
fi

