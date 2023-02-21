#!/usr/bin/env zsh
if [[ -z $STOW_FOLDERS ]]; then
    STOW_FOLDERS="pics,fonts,bookmarks,documents"
fi

if [[ -z $PRI ]]; then
    PRI=$HOME/repos/privatefiles/
fi

STOW_FOLDERS=$STOW_FOLDERS PRI=$PRI $PRI/install

