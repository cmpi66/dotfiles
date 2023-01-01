## Vim mode
fish_vi_key_bindings

#Vim cursor behavior
set fish_cursor_default block steady
set fish_cursor_insert line steady
set fish_cursor_replace_one underscore steady
set fish_cursor_replace underscore steady
set fish_cursor_visual block

set fish_greeting             #disables help greeting
set TERM "xterm-256color" # This messes up LunarVim; gives it some wierd ghosting text and color.
# set TERM "screen-256color" 
# set TERM "tmux-256color" 
# set TERM "screen-256color-bce" 

## NONE OF THE ABOVE WORK TO FIX TMUX COLORS
# set TERM "xterm-st"
# set TERM "xterm-alacritty"
# set TERM "xterm-kitty"
# set TERM "linux"
set EDITOR "lvim"
set VISUAL "lvim"
set TERMINAL "st"
set BROWSER "firefox-bin"

### SET MANPAGER
### "nvim" as manpager
# set -x MANPAGER "nvim -c 'set ft=man' -"        # this one dosnt work for me. It does for DT though.
set -x  MANPAGER "lvim +Man!"

### "bat" as manpager
# set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

### "vim" as manpager
# set -x MANPAGER "nvim -c 'set ft=man' -"

### AUTOCOMPLETE AND HIGHLIGHT COLORS ###

set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

# Fzf changing default bindings 
fzf_configure_bindings --git_status=\cs --git_log=\cl

# Speedy keys
# xset r rate 210 40
# xset r rate 250 40
xset r rate 300 50
# xset r rate 400 100

alias j='z'
alias vf="fzf | xargs -r -I % $EDITOR %"

abbr f 'zi'
abbr g 'lazygit'

# get fastest mirrors
# abbr mirror "sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
# abbr mirrord "sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
# abbr mirrors "sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
# abbr mirrora "sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ls='exa -al --color=always --icons --group-directories-first'
alias sl='exa -al --color=always --icons --group-directories-first'
alias diff='diff --color=auto'
# easier to read disk
alias df='pydf'     # human-readable sizes
alias free='free -m' # show sizes in MB
# alias yay='paru'

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias sudo='doas'
alias nvim='lvim'
alias scim='sc-im'

# System abbreviations 

abbr merge "xrdb -merge ~/.Xresources"
# abbr nvimrc "nvim ~/.config/nvim/"
abbr i3 "i3lock -C -i /home/chris/.local/bin/arch-wallpaper.jpg"
abbr nv "nvim"
abbr snv "sudo nvim"
abbr ka "killall"
abbr cp "cp -irv"
abbr mv "mv -iv"
abbr rm "rm -v"
abbr ln "ln -i"
abbr cl "clear"
abbr v "vim"
abbr wiki "nvim ~/zettelkasten/index.md"
# abbr gp "git add . && git commit -m 'autopush' && git push"
abbr gp "git add . && git commit -m 'autopush' && git remote | xargs -L1 git push --all" ##push to all git remotes
abbr mkdir "mkdir -pv"
abbr lf "lfub"
# abbr kx "killall sxhkd && sxhkd &"
abbr cat "bat -p"
abbr ncm "ncmpcpp"
abbr m "mailsync"
abbr checkout "git checkout"
abbr clone "git clone"
abbr branch "git branch"
abbr yt "yt-dlp --add-metadata -i"
abbr yta "yt-dlp -x -f bestaudio/best"
abbr vd "nvim -d"
abbr combinepdf "gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=combine.pdf -dBATCH"
abbr en  "gpg -c --no-symkey-cache --cipher-algo  AES256"
abbr stow "stow --target=$HOME"

abbr vpnup "sudo wg-quick up gentoobox"
abbr vpndown "sudo wg-quick down gentoobox"

abbr cmpiup "rsync -uvrP --delete-after ~/.local/src/sites/cmpi4/website/public/ root@cmpi4.com:/var/www/cmpi4/"
abbr tabs "xargs -n1 firefox-bin <"
abbr paste "xclip -selection c -o >"

## zk
alias perma="zk perma"
alias flee="zk flee"
alias nt="zk nt"
alias lit="zk lit"


#Custom keybindings vi insert mode
set -g fish_key_bindings fish_vi_key_bindings
bind -M insert \co 'lf'
# bind -M insert \ce 'neomutt'
bind -M insert \ce 'ncdu'
bind -M insert \ck history-search-backward # Up
bind -M insert \cj history-search-forward # Down
 # bind -M insert jk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
bind -M insert -m default jk backward-char force-repaint
# bind -M insert -m default kj backward-char force-repaint

# Custom keybindings default mode
bind \co 'lf'
# bind \ce 'neomutt'
bind \ce 'ncdu'
bind \ck history-search-backward # Up
bind \cj history-search-forward # Down

# neofetch
zoxide init fish | source
starship init fish | source
scheme set tokyonight

source ~/.config/fish/shortcuts.fish
source ~/.config/fish/gentoo.fish
# add it to your ~/.config/fish/config.fish

# retrieve command cheat sheets from cheat.sh
# fish version by @tobiasreischmann

function cheat.sh
    curl cheat.sh/$argv
end

# register completions (on-the-fly, non-cached, because the actual command won't be cached anyway
complete -c cheat.sh -xa '(curl -s cheat.sh/:list)'



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/chris/.local/share/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

