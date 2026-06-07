# Set fast-syntax-highlighting theme (only if not already set)
[[ ! -f "${XDG_CACHE_HOME:-$HOME/.cache}/fsh/current_theme.zsh" ]] && fast-theme XDG:catppuccin-latte

# Theme / appearance
export BAT_THEME="Catppuccin Latte"
export FZF_DEFAULT_OPTS=" \
--color=bg+:#CCD0DA,bg:#FAF4ED,spinner:#DC8A78,hl:#D20F39 \
--color=fg:#4C4F69,header:#D20F39,info:#8839EF,pointer:#DC8A78 \
--color=marker:#7287FD,fg+:#4C4F69,prompt:#8839EF,hl+:#D20F39 \
--color=selected-bg:#BCC0CC \
--color=border:#9CA0B0,label:#4C4F69"
