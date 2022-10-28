##access my docs files 
function sd 
 du -a ~/docs/* | awk '{print$2}' | fzf | xargs -r $EDITOR
end
