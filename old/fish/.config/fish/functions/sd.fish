##access my docs files 
function sd 
 # du -a ~/docs/* | awk '{print$2}' | fzf | xargs -r $EDITOR
du -a  --exclude '*.pdf' --exclude '*.docx' --exclude '*.odt' ~/docs/* | awk '{print$2}' | fzf | xargs -r $EDITOR

end
