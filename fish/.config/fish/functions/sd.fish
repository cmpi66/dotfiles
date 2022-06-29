##access my docs files 
function sd 
 du -a ~/media/Documents/* | awk '{print$2}' | fzf | xargs -r $EDITOR
end
