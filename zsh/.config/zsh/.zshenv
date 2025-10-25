export ZDOTDIR=$HOME/.config/zsh
# # export GPG_TTY=$(tty) # Without this line gpg over ssh with smart card works. Its wierd, all configs have this line. On gento this line could be either commmented or uncommented. 
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
# # echo "UPDATESTARTUPTTY" | gpg-connect-agent > /dev/null 2>&1 # This line is so pinentry program can work with gpg ssh smartcard if the gpg=tty is exported.
gpgconf --launch gpg-agent

#. "$HOME/.cargo/env"
