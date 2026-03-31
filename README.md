# dotfiles

This repo contains the configuration to setup my machines. This is using [Chezmoi](https://chezmoi.io), the dotfile manager to setup the install.

This automated setup is currently only configured for Artix/Gentoo machines

## How to run

```bash
# better way to do it and also have it on path afterward
sudo sh -c "$(curl -fsLS get.chezmoi.io)" -- -b /usr/local/bin

export GITHUB_USERNAME=cmpi66
chezmoi init --apply $GITHUB_USERNAME
```

