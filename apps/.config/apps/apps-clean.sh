#!/bin/sh

#arch clean install apps 

#Remeber to change libreoffice to offfice theme by following that guide. Then, check grammar and spell check.
#Then do the polkit policies for ufw,timeshift, and whatever else is necessary. Also, should i install pamac? 

#remember /etc/doas.conf file for opendoas

#remeber firefox smooth scrolling histfile

#add rofi themes from ~/.local/share/rofi/themes/

#dont forget nvm node for lsp neovim








sudo pacman --noconfirm --needed -S \
  archlinux-keyring\
  stow \
  opendoas \
  fish \
  xsel \
  grub-btrfs \
  rofi \
  pulsemixer \
  okular \
  lxappearance \
  libreoffice-fresh \
  brightnessctl \
  redshift \
  neofetch \
  aspell-en \
  libmythes \
  mythes-en \
  languagetool \
  gimp \
  inkscape \
  mpv \
  sxhkd \
  xorg-xev \
  gufw \
  cronie \
  cutefish-icons \
  vim \
  wireguard-tools \
  rofi-calc \
  tree \
  clipnotify \
  zoxide \
  fzf \
  fd \
  zsh \
  the_silver_searcher \
  xkeycaps \
  ripgrep \
  ctags \
  base-devel \
  pcmanfm \
  exa \
  firefox \
  linux-lts \
  linux-lts-headers \
  pass \
  lynx \
  entr \
  isync \
  msmtp \
  notmuch \
  xorg-xset \
  zathura \
  lazygit \
  gnucash \
  ncdu \
  rmlint \
  mpd \
  ncmpcpp \
  mpc \
  mtr \
  inconsolata \
  iosevka \
  maim \
  sxiv \
  sdcv \
  libfidio2 \
  xclip \
  dunst \
  gnome-keyring \
  libsecret \
  procs \
  texlive-most \
  cargo \
  cargo install stylua \
  shfmt \
  moreutils \
  pandoc \
  r \
  tk \


  







git clone \
  https://github.com/cdown/clipmenu.git \
  https://github.com/AdnanHodzic/auto-cpufreq.git



