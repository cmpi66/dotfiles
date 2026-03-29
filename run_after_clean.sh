#!/usr/bin/env bash

NPMRC="$HOME/.npmrc"
GNUPGDIR="$HOME/.gnupg"

gpg --list-keys >/dev/null

# List of directories to delete
delete_dirs=(
  "/home/chris/Desktop"
  "/home/chris/Documents"
  "/home/chris/Downloads"
  "/home/chris/Music"
  "/home/chris/Pictures"
  "/home/chris/Public"
  "/home/chris/Templates"
  "/home/chris/Videos"
  # "/home/chris/Sync"
  # "/home/chris/.cargo"
)

# Loop through each directory and delete it if it exists
for dir in "${delete_dirs[@]}"; do
  if [ -d "$dir" ]; then
    rm -r "$dir"
  fi
done

# List of directories to create
create_dirs=(
  "/home/chris/dl"
  "/home/chris/dl/git-clones"
  "/home/chris/.local"
  "/home/chris/.config/npm"
)

# Loop through each directory and create it if it doesn't exist
for dir in "${create_dirs[@]}"; do
  if [ ! -d "$dir" ]; then
    mkdir -p "$dir"
  fi
done

# List of files to delete
delete_files=(
  "/home/chris/.bashrc"
  "/home/chris/.bash_history"
  "/home/chris/.bash_logout"
  "/home/chris/.bash_profile"
  "/home/chris/.profile"
  "/home/chris/.zshenv"
  "/home/chris/.wget-hsts"
)

# Loop through each directory and delete it if it exists
for file in "${delete_files[@]}"; do
  if [ -f "$file" ]; then
    rm "$file"
  fi
done

nmprc() {
  if [[ -f "$NPMRC" ]]; then
    mv "$NPMRC" $HOME/.config/npm/npmrc
  fi
}

gnupgdir() {
  if [[ -d "$GNUPGDIR" ]]; then
    mv "$GNUPGDIR" $HOME/.local/share/gnupg
  fi
}

nmprc
gnupgdir
