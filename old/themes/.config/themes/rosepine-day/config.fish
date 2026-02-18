## Vim mode
fish_vi_key_bindings

# set -x GPG_TTY (tty)
# set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
# gpgconf --launch gpg-agent

#Vim cursor behavior
set fish_cursor_default block steady
set fish_cursor_insert line steady
set fish_cursor_replace_one underscore steady
set fish_cursor_replace underscore steady
set fish_cursor_visual block

set fish_greeting #disables help greeting
set TERM xterm-256color # This messes up LunarVim; gives it some wierd ghosting text and color.
# set TERM "screen-256color" 
# set TERM "tmux-256color" 
# set TERM "screen-256color-bce" 

## NONE OF THE ABOVE WORK TO FIX TMUX COLORS
# set TERM "xterm-st"
# set TERM "xterm-alacritty"
# set TERM "xterm-kitty"
# set TERM "linux"
set EDITOR nvim
set VISUAL nvim
set TERMINAL kitty
set BROWSER librewolf

### SET MANPAGER
### "nvim" as manpager
# set -x MANPAGER "nvim -c 'set ft=man' -"        # this one dosnt work for me. It does for DT though.
set -x MANPAGER "nvim +Man!"

### "bat" as manpager
# set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

### "vim" as manpager
# set -x MANPAGER "nvim -c 'set ft=man' -"

### AUTOCOMPLETE AND HIGHLIGHT COLORS ###

set fish_color_normal --bold brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

# Fzf changing default bindings 
fzf_configure_bindings --git_status=\cs --git_log=\cl

# Speedy keys
# xset r rate 210 40
# xset r rate 250 40
# xset r rate 300 50
# xset r rate 400 100

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ls='eza -al --color=always --icons --group-directories-first'
alias sl='eza -al --color=always --icons --group-directories-first'
alias diff='diff --color=auto'

# easier to read disk
alias df='pydf' # human-readable sizes
alias free='free -m' # show sizes in MB

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# System
abbr sudo doas
# alias nvim='lvim'
alias scim='sc-im --quiet'
alias mbsync='mbsync -c $MBSYNCRC'
alias j='z'
alias vf="fzf | xargs -r -I % $EDITOR %"

## zk
# alias perma="zk perma"
# alias flee="zk flee"
# alias nt="zk nt"
# alias lit="zk lit"

# System abbreviations 

abbr f zi
abbr merge "xrdb -merge ~/.config/x11/xresources"
# abbr nvimrc "nvim ~/.config/nvim/"
abbr nv nvim
abbr snv "doas nvim"
abbr ka killall
abbr cp "cp -irv"
abbr mv "mv -iv"
abbr rm "rm -v"
abbr ln "ln -i"
abbr cl clear
abbr v vim
# abbr wiki "nvim ~/.local/.src/zettlekasten/index.md"
abbr gp "git add . && git commit -m 'autopush' && git push"
abbr mkdir "mkdir -pv"
# abbr lf lfub
# abbr kx "killall sxhkd && sxhkd &"
abbr cat bat
# abbr ncm ncmpcpp
# abbr m mailsync
abbr checkout "git checkout"
abbr clone "git clone"
abbr branch "git branch"
abbr ytd "yt-dlp --add-metadata -i"
abbr yta "yt-dlp -x -f bestaudio/best"
abbr vd "nvim -d"
abbr combinepdf "gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=combine.pdf -dBATCH"
abbr en "gpg -c --no-symkey-cache --cipher-algo  AES256"
abbr stow "stow --target=$HOME"
abbr vpnup "sudo wg-quick up gentoobox"
abbr vpndown "sudo wg-quick down gentoobox"
abbr cmpiup "rsync -uvrP --delete-after ~/.local/src/sites/cmpi4/website/public/ root@cmpi4.com:/var/www/cmpi4/"
abbr tabs "xargs -n1 librewolf-bin <"
# abbr paste "xclip -selection c -o >"
# abbr paste "xsel --clipboard --output >" 
abbr p "wl-paste >"
abbr updategrub "doas grub-mkconfig -o /boot/grub/grub.cfg"
abbr poweroff "doas openrc-shutdown -p now"
abbr reboot "doas openrc-shutdown -r now"
abbr mpv "mpv --fullscreen"
abbr lynx lynxub
abbr se "br --conf ~/.config/broot/open.hjson ~/.local/bin/"
abbr syncartilces "rclone sync -v  --transfers 20 --retries 5 --s3-upload-cutoff=0 --exclude '*.md'  ~/docs/md/cmm-articles/  Idrive:cmmarketer/articles"
abbr syncsamples "rclone sync -v --transfers 20 --retries 5 --s3-upload-cutoff=0 --exclude '*.md'  ~/copywriting/samples/final/ Idrive:cmmarketer/samples"
abbr idrivemn "rclone mount IdriveEncrypt:/ /mnt/idrive/ --vfs-cache-mode full --daemon"

#Custom keybindings vi insert mode
set -g fish_key_bindings fish_vi_key_bindings
# bind -M insert \co lf
# bind -M insert \ce ncdu
bind -M insert \ck history-search-backward # Up
bind -M insert \cj history-search-forward # Down
# bind -M insert jk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
# bind -M insert -m default jk backward-char force-repaint
# bind -M insert -m default kj backward-char force-repaint

# bind -M visual y fish_clipboard_copy

# Custom keybindings default mode
# bind \co lfcd
# bind \ce ncdu
bind \ck history-search-backward # Up
bind \cj history-search-forward # Down
bind yy fish_clipboard_copy
bind Y fish_clipboard_copy
bind p fish_clipboard_paste

# neofetch
zoxide init fish | source
starship init fish | source
atuin init fish | source
# scheme set tokyonight
# fish_config theme save tokyonight

# source ~/.config/fish/themes/tokyonight.fish
source ~/.config/fish/themes/rosepine-dawn.fish
# source ~/.config/fish/themes/catppuccin-macchiato.fish
source ~/.config/fish/shortcuts.fish
source ~/.config/fish/gentoo.fish
source ~/.config/fish/fnm.fish

export BAT_THEME="rose-pine-dawn"
export FZF_DEFAULT_OPTS="
	--color=fg:#797593,bg:#faf4ed,hl:#d7827e
	--color=fg+:#575279,bg+:#f2e9e1,hl+:#d7827e
	--color=border:#dfdad9,header:#286983,gutter:#faf4ed
	--color=spinner:#ea9d34,info:#56949f
	--color=pointer:#907aa9,marker:#b4637a,prompt:#797593"
# retrieve command cheat sheets from cheat.sh
# fish version by @tobiasreischmann

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# eval /home/chris/.local/share/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# fastfetch
