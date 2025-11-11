# Rose Pine Dawn Color Palette
set -l foreground 575279
set -l selection f2e9e1
set -l comment 797593
set -l red b4637a
set -l orange ea9d34
set -l yellow ea9d34
set -l green 56949f
set -l purple d7827e
set -l cyan 286983
set -l pink 907aa9

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
set -g fish_color_search_match --background=faf4ed
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
set -g fish_pager_color_background --background=fffaf3
set -g fish_pager_color_prefix $green
set -g fish_pager_color_completion $comment
set -g fish_pager_color_description $comment
set -g fish_pager_color_selected_background --background=$selection
set -g fish_pager_color_selected_prefix $green
set -g fish_pager_color_selected_completion $foreground
set -g fish_pager_color_selected_description $foreground
