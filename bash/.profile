export PATH=$HOME/bin:/usr/local/bin:$PATH
PATH="$PATH:/$HOME/.local/bin"
PATH="$PATH:/$HOME/.local/share/cargo/bin"

export XDG_CONFIG_HOME=$HOME/.config/
export XDG_CACHE_HOME=$HOME/.cache/
export XDG_DATA_HOME=$HOME/.local/share
export visual="nvim"
export browser="firefox"
export movplay="mpv"
export picview="feh"
export terminal="alacritty"
#export cm_launcher="rofi"
export term=xterm-256color
export $EDITOR="nvim" 

export manpager='nvim +man!'    
export MANWIDTH=999    

# ~/ Clean up:

export LESSHISTFILE="-"
export NOTMUCH_CONFIG=$XDG_CONFIG_HOME/notmuch/default/config
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export URLVIEW_CONFIG="$XDG_CONFIG_HOME/urlview/config"
export GOPATH="$XDG_DATA_HOME/go"
export GIT_CONFIG="$XDG_CONFIG_HOME/git/config"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/.password-store"
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"
export HISTFILE="$XDG_DATA_HOME/zsh/history"
# export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export MBSYNCRC="${XDG_CONFIG_HOME:-$HOME/.config}/mbsync/config"

export DICS="/usr/share/stardict/dic/"
