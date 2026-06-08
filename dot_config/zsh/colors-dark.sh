# Set fast-syntax-highlighting theme (only if not already set)
fast-theme XDG:catppuccin-macchiato >/dev/null

# Theme / appearance
export BAT_THEME="Catppuccin Macchiato"
export FZF_DEFAULT_OPTS=" \
--bind tab:down,shift-tab:up \
--layout=reverse --height 40% \
--color=spinner:#F4DBD6,hl:#ED8796 \
--color=fg:#CAD3F5,header:#ED8796,info:#C6A0F6,pointer:#F4DBD6 \
--color=marker:#B7BDF8,fg+:#CAD3F5,prompt:#C6A0F6,hl+:#ED8796 \
--color=selected-bg:#494D64 \
--color=border:#6E738D,label:#CAD3F5"
