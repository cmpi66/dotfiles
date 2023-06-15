#
#auto startx

export PATH="$PATH:${$(find ~/.local/bin/ -type d -printf %p:)%%:}"

#XDG
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CONFIG_HOME=$HOME/.config/
export XDG_CACHE_HOME=$HOME/.cache/
export XDG_DATA_HOME=$HOME/.local/share
export ZDOTDIR=$HOME/.config/zsh   
#export $EDITOR="lvim" 

# integrate nix pacakges with desktop: THIS KILLS MY ICONS AND WONT LET ME DOWNLOAD OR UPLOAD FILES WITH ANY BROWSER. THIS WAS WHAT KILLED AND MESSED UP OKULAR TOO. WOW, SO MUCH DAMAGE THIS COMMAND. IT works on gentoo though
# export XDG_DATA_DIRS=$HOME/.nix-profile/share:$XDG_DATA_DIRS

export PATH="$PATH:/$HOME/.local/appimages"

## Stole this from luke. Make every sub directory from bin to path. 
# export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')" 
export PATH="$PATH:/$HOME/.local/share/cargo/bin"


## Since im using fish i have to keep the xdg here. zsh-exports doesnt get read. 

export EDITOR="lvim"
export VISUAL="lvim"
export BROWSER="librewolf"
export MOVPLAY="mpv"
export TERM=xterm-256color
export PICVIEW="sxiv"


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
# export DICS="/usr/share/stardict/dic/"
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
# export FZF_DEFAULT_OPTS="--layout=reverse --height 50%" # AT 50% it breaks uberzug with ytfzf and it breaks dwm swallow patch. I have to make a tradeoff
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
# SDCV_PAGER='lolcat -f | less --quit-if-one-screen -RX'
# export QT_QPA_PLATFORMTHEME="gtk2" # Have QT use gtk2 theme.
export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"
# export GPG_TTY=$(tty) # Without this line gpg over ssh with smart card works. Its wierd, all configs have this line. On gento this line could be either commmented or uncommented. 
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
echo "UPDATESTARTUPTTY" | gpg-connect-agent > /dev/null 2>&1 # This line is so pinentry program can work with gpg ssh smartcard if the gpg=tty is exported.
gpgconf --launch gpg-agent

# if [[ -n "$SSH_CONNECTION" ]] ;then
#     export PINENTRY_USER_DATA="USE_CURSES=1"
# fi

if [[ -z $VIT_DIR ]]; then
  export VIT_DIR=$XDG_CONFIG_HOME/vit
fi

if [[ -z $TIMEWARRIORDB ]]; then
  export TIMEWARRIORDB=$XDG_DATA_HOME/timew
fi
## sudo not required for some system commands
# for command in mount umount sv pacman updatedb su shutdown poweroff reboot ; do
# 	alias $command="sudo $command"
# done; unset command 

export LF_ICONS="di=📁:\
fi=📃:\
tw=🤝:\
ow=📂:\
ln=⛓:\
or=❌:\
ex=🎯:\
*.txt=✍:\
*.mom=✍:\
*.me=✍:\
*.ms=✍:\
*.png=🖼:\
*.webp=🖼:\
*.ico=🖼:\
*.jpg=📸:\
*.jpe=📸:\
*.jpeg=📸:\
*.gif=🖼:\
*.svg=🗺:\
*.tif=🖼:\
*.tiff=🖼:\
*.xcf=🖌:\
*.html=🌎:\
*.xml=📰:\
*.gpg=🔒:\
*.css=🎨:\
*.pdf=📚:\
*.djvu=📚:\
*.epub=📚:\
*.csv=📓:\
*.xlsx=📓:\
*.tex=📜:\
*.md=📘:\
*.r=📊:\
*.R=📊:\
*.rmd=📊:\
*.Rmd=📊:\
*.m=📊:\
*.mp3=🎵:\
*.opus=🎵:\
*.ogg=🎵:\
*.m4a=🎵:\
*.flac=🎼:\
*.wav=🎼:\
*.mkv=🎥:\
*.mp4=🎥:\
*.webm=🎥:\
*.mpeg=🎥:\
*.avi=🎥:\
*.mov=🎥:\
*.mpg=🎥:\
*.wmv=🎥:\
*.m4b=🎥:\
*.flv=🎥:\
*.zip=📦:\
*.rar=📦:\
*.7z=📦:\
*.tar.gz=📦:\
*.z64=🎮:\
*.v64=🎮:\
*.n64=🎮:\
*.gba=🎮:\
*.nes=🎮:\
*.gdi=🎮:\
*.1=ℹ:\
*.nfo=ℹ:\
*.info=ℹ:\
*.log=📙:\
*.iso=📀:\
*.img=📀:\
*.bib=🎓:\
*.ged=👪:\
*.part=💔:\
*.torrent=🔽:\
*.jar=♨:\
*.java=♨:\
"

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx "$XINITRC"
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx ~/.config/x11/xinitrc

# Start graphical server on user's current tty if not already running.
# [ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "$XINITRC"
