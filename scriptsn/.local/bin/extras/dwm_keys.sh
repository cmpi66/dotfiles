sed -n '/start_keys/,/end_keys/p' ~/.config/keys.h | \
  grep -v '//' | \
  sed -e 's/^[ \t]*//' | \
 yad --text-info --back=#282a36 --fore=#8be9fd --geometry=800x1000 --no-buttons --fontname="JetbrainsMono Bold 11"
