## Vim mode
fish_vi_key_bindings

# if set -q TMUX
# else
#   tmux
# end

#Vim cursor behavior
set fish_cursor_default block steady
set fish_cursor_insert line steady
set fish_cursor_replace_one underscore steady
set fish_cursor_replace underscore steady
set fish_cursor_visual block
set fish_greeting #disables help greeting
set TERM xterm-256color # This messes up Lunarvim on gentoobox ssh connection; wrote the effects on gentoo branch.
set EDITOR nvim
set VISUAL nvim
set TERMINAL kitty
set BROWSER qutebrowser

### SET MANPAGER
### "nvim" as manpager
# set -x MANPAGER "nvim -c 'set ft=man' -"        # this one dosnt work for me. It does for DT though.
set -x MANPAGER "nvim +Man!"

## nix broke manpath on fish; using this now
# set MANPATH /usr/share/man:/usr/local/share/man:$HOME/.nix-profile/share/man
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
# xset r rate 300 50
# xset r rate 350 50
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
alias yay='paru'
# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# alias nvim='lvim'
abbr sudo doas
alias scim='sc-im --quiet'

# zk
alias mbsync='mbsync -c $MBSYNCRC'
alias j='z'
alias vf="fzf | xargs -r -I % $EDITOR %"
alias exegol="sudo -E $(echo ~/.local/bin/exegol)"
# alias duck='?'
# alias google='??'

# System abbreviations 
abbr f zi
abbr desk "ssh -t chris@10.27.27.10"
abbr archlinx-fix-keys "sudo pacman-key --init && sudo pacman-key --populate archlinux && sudo pacman-key --refresh-keys"
# abbr merge "xrdb -merge ~/.config/x11/xresources"
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
abbr p "doas pacman -S"
abbr rn "doas pacman -Rns"
abbr yup "paru -Syu"
# abbr yup "yay -Syu"
# abbr gp "git add . && git commit -m 'autopush' && git remote | xargs -L1 git push --all" ##push to all 3 gits
abbr gp "git add . && git commit -m 'autopush' && git push" ##push to all 3 gits
abbr mkdir "mkdir -pv"
abbr lynx lynxub
abbr cat bat
abbr checkout "git checkout"
abbr clone "git clone"
abbr branch "git branch"
abbr ytd "yt-dlp --add-metadata -i"
abbr yta "yt-dlp -x -f bestaudio/best"
abbr yay paru
abbr vd "nvim -d"
abbr combinepdf "gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=combine.pdf -dBATCH"
abbr en "gpg -c --no-symkey-cache --cipher-algo AES256"
abbr stow "stow --target=$HOME"

abbr pfvpup "doas wg-quick up pfwg0"
abbr pfvpdown "doas wg-quick down pfwg0"

# abbr upcmpi "rsync -uvrP --delete-after ~/.local/src/sites/cmpi4/website/public/ root@cmpi4.com:/var/www/cmpi4/"
abbr tabs "xargs -n1 librewolf <"
# abbr paste "xclip -selection c -o >"
abbr updategrub "doas grub-mkconfig -o /boot/grub/grub.cfg"
abbr mpv "mpv --fullscreen"
# abbr paste "xsel --clipboard --output >" 
abbr paste "wl-paste >"
abbr se "br --conf ~/.config/broot/open.hjson ~/.local/bin/"
abbr batthealth 'upower -i /org/freedesktop/UPower/devices/battery_BAT1'
# abbr idrivemn "rclone mount IdriveEncrypt:/ /mnt/idrive/ --vfs-cache-mode full --daemon"

#Custom keybindings vi insert mode
set -g fish_key_bindings fish_vi_key_bindings
# bind -M insert \ck history-search-backward # Up
# bind -M insert \cj history-search-forward # Down

# Custom keybindings default mode
# bind \ck history-search-backward # Up
# bind \cj history-search-forward # Down
bind yy fish_clipboard_copy
bind Y fish_clipboard_copy
bind p fish_clipboard_paste

zoxide init fish | source
starship init fish | source
atuin init fish | source
# scheme set Catppuccin-Macchiato ## Doesn't work

## THese give me that stupid 'overwrite color' prompt and it messues up the starship tasks rightside prompt
# fish_config theme save "Catppuccin-Latte"
# fish_config theme save "Catppuccin-Macchiato"
# source ~/.config/fish/themes/tokyonight.fish
source ~/.config/fish/themes/catppuccin-macchiato.fish
source ~/.config/fish/shortcuts.fish
source ~/.config/fish/fnm.fish
export BAT_THEME="Catppuccin Macchiato"
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363A4F,bg:#24273A,spinner:#F4DBD6,hl:#ED8796 \
--color=fg:#CAD3F5,header:#ED8796,info:#C6A0F6,pointer:#F4DBD6 \
--color=marker:#B7BDF8,fg+:#CAD3F5,prompt:#C6A0F6,hl+:#ED8796 \
--color=selected-bg:#494D64 \
--color=border:#6E738D,label:#CAD3F5"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# if test -f /home/chris/.local/share/miniconda3/bin/conda
#     eval /home/chris/.local/share/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# end
# <<< conda initialize <<<
# fastfetch
