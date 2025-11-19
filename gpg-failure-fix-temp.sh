#!/bin/bash
sudo rc-service pcscd restart

gpgconf --kill all
killall -9 gpg-agent scdaemon || true

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
