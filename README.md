# Dotfiles

These are all my config files. There are two branches; master and gentoo. Master is for my arch machine and gentoo is for my gentoo machine. They're mostly the same, but if you're not a gentoo user then I recommend you pull from the master branch instead.  

## What I use

I use Dwm, fish shell, neovim and most of suckless' tools. Dwm might be the easiest window manager to configure, you don't need to know any C at all. They're a few videos on youtube on how to patch it, and once you're  done you never have to tweak it again. 

The zsh config I took from [Chris the machine](https://github.com/ChristianChiarulli) 

A lot of my stuff I've forked or borrowed from [Luke Smith.](https://github.com/LukeSmithxyz) You'll find I have his:

- Scripts for a lot of useful stuff
- Fork of st
- Lf settings 
- Sxiv settings


You'll notice that my file structure looks different. That's because I'm using GNU stow. Here's a video from [Chris the machine](https://www.youtube.com/watch?v=90xMTKml9O0&t=64s) explaining how to use it. He also happens to be the main developer for [lunarvim,](https://www.lunarvim.org/)

## Installing 

Download `stow` and `git`.

Clone into your `$HOME` directory or `~`.

> git clone https://github.com/cmpi66/dotfiles.git ~

