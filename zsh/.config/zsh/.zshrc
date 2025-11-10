# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"


source /home/chris/.config/broot/launcher/bash/br
source "$HOME/.config/zsh/catppuccin_macchiato-zsh-syntax-highlighting.zsh"
source "$HOME/.config/zsh/fzf-git.sh"

# source
plug "$HOME/.config/zsh/zsh-exports"

plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
# plug "zap-zsh/zap-prompt"
plug "zap-zsh/fzf"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-history-substring-search"

HISTFILE="$XDG_DATA_HOME/zsh/history"

#Load aliases and shortcuts if existent.
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/functionrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/functionrc"

stty stop undef		# Disable ctrl-s to freeze terminal.

# keybinds
bindkey '^ ' autosuggest-accept
fish_clipboard_copy() {
  print -rn -- "$BUFFER" | wl-copy
}

fish_clipboard_paste() {
  LBUFFER+=$(wl-paste)
}

zle -N fish_clipboard_copy
zle -N fish_clipboard_paste

bindkey -M vicmd 'yy' fish_clipboard_copy
bindkey -M vicmd 'Y'  fish_clipboard_copy
bindkey -M vicmd 'p'  fish_clipboard_paste


zle -N fzf-git-files-widget
bindkey '^S' fzf-git-files-widget


# Load and initialise completion system
autoload -Uz compinit
compinit


