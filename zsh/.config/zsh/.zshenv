export ZDOTDIR="$HOME/.config/zsh"

# Ensure gpg-agent exists (safe even if already running)
gpgconf --launch gpg-agent >/dev/null 2>&1

# Only export SSH_AUTH_SOCK if it points to a real socket
_gpg_ssh_sock="$(gpgconf --list-dirs agent-ssh-socket 2>/dev/null)"
if [[ -n "$_gpg_ssh_sock" && -S "$_gpg_ssh_sock" ]]; then
  export SSH_AUTH_SOCK="$_gpg_ssh_sock"
fi
unset _gpg_ssh_sock

