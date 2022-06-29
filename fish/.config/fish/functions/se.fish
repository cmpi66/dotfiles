function se 
 du -a ~/.local/bin/* ~/.config/* | awk '{print$2}' | fzf | xargs -r $EDITOR
end
