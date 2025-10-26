## GENTOO FILE

# typeset -U PATH path

#XDG
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CONFIG_HOME=$HOME/.config/
export XDG_CACHE_HOME=$HOME/.cache/
export XDG_DATA_HOME=$HOME/.local/share
export ZDOTDIR=$HOME/.config/zsh   
export $EDITOR="nvim" 

# integrate nix pacakges with desktop
export XDG_DATA_DIRS=$HOME/.nix-profile/share:$XDG_DATA_DIRS

export PATH="$PATH:/$HOME/.local/appimages"
export PATH="$PATH:${$(find ~/.local/bin/ -type d -printf %p:)%%:}"
## Stole this from luke. Make every sub directory from bin to path. 
# export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')" 
export PATH="$PATH:/$HOME/.local/share/cargo/bin"

## Since im using fish i have to keep the xdg here. zsh-exports doesnt get read. 

export editor="nvim"
export visual="nvim"
export browser="librewolf"
export movplay="mpv"
export term=xterm-256color
export picview="imv"
export terminal="kitty"



# ~/ Clean up:
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
export GIT_CONFIG="$XDG_CONFIG_HOME/git/config" ## This breaks aur packages gives "ERROR not a clone of 'x repo'" # well as of 10-25-25 it works so renabled this. On new systems make sure to move .gitconfig to config, automate it.
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/.password-store"
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"
export HISTFILE="$XDG_DATA_HOME/zsh/history"
# export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

export MBSYNCRC="${XDG_CONFIG_HOME:-$HOME/.config}/mbsync/config" 
# export DICS="/usr/share/stardict/dic/"
#
export STARDICT_DATA_DIR="$XDG_DATA_HOME"/dic
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export PYTHONSTARTUP="/etc/python/pythonrc"
export CONDARC="$XDG_CONFIG_HOME/conda/condarc"
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel 
export TERMINFO="$XDG_DATA_HOME"/terminfo
export _JAVA_AWT_WM_NONREPARENTING=1 # Fix for Java applications in dwm
export HISTFILE="${XDG_STATE_HOME}"/bash/history
export QT_QPA_PLATFORMTHEME="gtk2" # Have QT use gtk2 theme.
export ANSIBLE_HOME="${XDG_CONFIG_HOME}/ansible"
export ANSIBLE_CONFIG="${XDG_CONFIG_HOME}/ansible.cfg"
export ANSIBLE_GALAXY_CACHE_DIR="${XDG_CACHE_HOME}/ansible/galaxy_cache"
# export HISTFILE="$XDG_DATA_HOME/history"
# export TMUX_TMPDIR="$XDG_RUNTIME_DIR" # can't attach to ssh sessions since it looks for the /tmp dir
export W3M_DIR="$XDG_DATA_HOME"/w3m
export PATH=~/.local/.npm-global/bin:$PATH
export N_PREFIX="$HOME/.local/n"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
## Got this from luke, let's see if this makes less better 
export LESS=-R
# export FZF_DEFAULT_OPTS="--layout=reverse --height 50%" # this breaks ytfzf uberzeug thumbnail preview at 50%
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'
export PASSWORD_STORE_EXTENSIONS_DIR="$XDG_DATA_HOME/.password-store/.extensions"
export PASSWORD_STORE_ENABLE_EXTENSIONS="true"
export QT_QPA_PLATFORMTHEME="gtk2" # Have QT use gtk2 theme.
# export BEMENU_OPTS='-i --center --width-factor 0.3.5 --line-height 40 --list 10 --border 2 --border-radius 8 --bdr "#7dcfff" --fb "#1e1e2e" --ff "#94e2d5" --nb "#1e1e2e" --nf "#f5e0dc" --tb "#1e1e2e" --hb "#1e1e2e" --tf "#cba6f7" --hf "#89b4fa" --nf "#f5e0dc" --af "#f5e0dc" --ab "#1e1e2e"'
# Macchiato
export BEMENU_OPTS='-i --center --width-factor 0.3.5. --line-height 40 --list 10 --border 2 --border-radius 8 --bdr "#8aadf4" --fb "#24273a" --ff "#cad3f5" --nb "#24273a" --nf "#cad3f5" --tb "#24273a" --hb "#24273a" --tf "#ed8796" --hf "#eed49f" --af "#cad3f5" --ab "#24273a"'
export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"
export OLLAMA_MODELS=$XDG_DATA_HOME/ollama/models
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363A4F,bg:#24273A,spinner:#F4DBD6,hl:#ED8796 \
--color=fg:#CAD3F5,header:#ED8796,info:#C6A0F6,pointer:#F4DBD6 \
--color=marker:#B7BDF8,fg+:#CAD3F5,prompt:#C6A0F6,hl+:#ED8796 \
--color=selected-bg:#494D64 \
--color=border:#6E738D,label:#CAD3F5"
export BAT_THEME="Catppuccin Macchiato"


# [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx ~/.config/x11/xinitrc
# [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec Hyprland
# [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && dbus-run-session Hyprland
# if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#     dbus-run-session Hyprland
# fi

# with X removed this was needed or else tmux would launch hyprland within itself, weird behavior.
if [ -z "$WAYLAND_DISPLAY" ] && [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec dbus-run-session Hyprland
fi

