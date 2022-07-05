# export PATH=$HOME/bin:/usr/local/bin:$PATH
# PATH="$PATH:/$HOME/.local/bin"
# PATH="$PATH:/$HOME/.local/share/cargo/bin"
#
# export XDG_CONFIG_HOME=$HOME/.config/
# export XDG_CACHE_HOME=$HOME/.cache/
# export XDG_DATA_HOME=$HOME/.local/share
# export visual="nvim"
# export browser="firefox"
# export movplay="mpv"
# export picview="feh"
# export terminal="alacritty"
# #export cm_launcher="rofi"
# export term=xterm-256color
# export $EDITOR="nvim" 
#
# export manpager='nvim +man!'    
# export MANWIDTH=999    
#
# # ~/ Clean up:
#
# export LESSHISTFILE="-"
# export NOTMUCH_CONFIG=$XDG_CONFIG_HOME/notmuch/default/config
# export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
# export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
# export CARGO_HOME="$XDG_DATA_HOME/cargo"
# export URLVIEW_CONFIG="$XDG_CONFIG_HOME/urlview/config"
# export GOPATH="$XDG_DATA_HOME/go"
# export GIT_CONFIG="$XDG_CONFIG_HOME/git/config"
# export GNUPGHOME="$XDG_DATA_HOME/gnupg"
# export PASSWORD_STORE_DIR="$XDG_DATA_HOME/.password-store"
# alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"
# export HISTFILE="$XDG_DATA_HOME/zsh/history"
# # export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
# export MBSYNCRC="${XDG_CONFIG_HOME:-$HOME/.config}/mbsync/config"
#
# export DICS="/usr/share/stardict/dic/"

## Most recent from zshenv
# typeset -U PATH path

#XDG
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CONFIG_HOME=$HOME/.config/
export XDG_CACHE_HOME=$HOME/.cache/
export XDG_DATA_HOME=$HOME/.local/share
export ZDOTDIR=$HOME/.config/zsh   
export $EDITOR="/usr/bin/nvim" 
# PATH="$PATH:/$HOME/.local/bin"

PATH="$PATH:/$HOME/.local/appimages"

## Stole this from luke. Make every sub directory from bin to path. 
PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')" 
# PATH="$PATH:/$HOME/.local/bin/statusbar"
 # . "$HOME/.cargo/env"
# This is with the new xdg cargo set up, if it doesnt work then ill just switch it back. NO biggie
PATH="$PATH:/$HOME/.local/share/cargo/bin"


## Since im using fish i have to keep the xdg here. zsh-exports doesnt get read. 

export editor="nvim"
export visual="nvim"
export browser="firefox-bin"
export movplay="mpv"
export term=xterm-256color
export picview="sxiv"

# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use # This loads nvm
#
export NVM_DIR="$HOME/.config//nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" --no-use   # This loads nvm bash_completion

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
# export GIT_CONFIG="$XDG_CONFIG_HOME/git/config" ## This breaks aur packages gives "ERROR not a clone of 'x repo'"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/.password-store"
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"
export HISTFILE="$XDG_DATA_HOME/zsh/history"
# export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export MBSYNCRC="${XDG_CONFIG_HOME:-$HOME/.config}/mbsync/config"
export DICS="/usr/share/stardict/dic/"

# [ -f ~/.config/LF_ICONS ] && {
# 	LF_ICONS="$(tr '\n' ':' <~/.config/LF_ICONS)" \
# 		&& export LF_ICONS
# }



