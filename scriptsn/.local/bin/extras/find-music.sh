#!/usr/bin/env bash

# file$(fd -e .flac -e .mp3 -e .m4a . ~/.local/share/music/ -t f | sort | sed "s|^home/chris/.local/share/music||" | bemenu -b -l 1) || exit 0
#
# notify-send "Playing $file" && mpc insert "$file" && mpc next >/dev/null && mpc play >/dev/null

# pdfs=$(find "$HOME" -maxdepth 3 ! -path "$HOME/.local/share/music/*" -name "*.mp3" | bemenu -i -l 15 -p "Select PDF:")
# # pdfs=$(find "$HOME" -maxdepth 6 ! -path "$HOME/.config/*" -name "*.pdf" | fzf --multi --exit-0)
#
# if [ -n "$pdfs" ]; then
#   mpc insert "$pdfs" && mpc next "$pdfs" && mpc play
# fi

# a shell script to go through music directory and read all types of musci files (flac, mp3 m4a opus) with numbers and spaces in file names and be abple to play it with mpc so i wont have to search in rmpc. Just fuzzy search.

# tools needed
# find, bemenu, or fzf but i dont want to luacch a terminal

# the simplest way is in term with like below

MUSIC=/home/chris/.local/share/music/

cd $MUSIC && kitty --class music fzf | mpc insert && mpc play || exit 0
