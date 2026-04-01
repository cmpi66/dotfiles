#!/bin/bash

# Install zap zsh plugin manager

if [ ! -d "$HOME/.local/share/zap/" ]; then
  echo "Getting zap.sh"
  zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1 --keep
else
  echo "zap zsh already found, skipping."
fi
