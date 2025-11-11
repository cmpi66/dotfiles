# Rose Pine Moon Color Palette
set -l foreground e0def4
set -l selection 393552
set -l comment 908caa
set -l red eb6f92
set -l orange f6c177
set -l yellow f6c177
set -l green 9ccfd8
set -l purple ea9a97
set -l cyan 3e8fb0
set -l pink c4a7e7

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $pink
set -g fish_color_keyword $green
set -g fish_color_quote $yellow
set -g fish_color_redirection $cyan
set -g fish_color_end $comment
set -g fish_color_option $purple
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=232136
set -g fish_color_operator $foreground
set -g fish_color_escape $cyan
set -g fish_color_autosuggestion $comment
set -g fish_color_cwd $purple
set -g fish_color_user $yellow
set -g fish_color_host $green
set -g fish_color_host_remote $pink
set -g fish_color_cancel $foreground
set -g fish_color_valid_path

# Completion Pager Colors
set -g fish_pager_color_progress $purple
set -g fish_pager_color_background --background=2a273f
set -g fish_pager_color_prefix $green
set -g fish_pager_color_completion $comment
set -g fish_pager_color_description $comment
set -g fish_pager_color_selected_background --background=$selection
set -g fish_pager_color_selected_prefix $green
set -g fish_pager_color_selected_completion $foreground
set -g fish_pager_color_selected_description $foreground
