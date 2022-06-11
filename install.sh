#!/bin/sh
sh <(curl -L https://nixos.org/nix/install) --no-daemon

. ~/.nix-profile/etc/profile.d/nix.sh

nix-env -iA \
	nixpkgs.stow

stow allacritty
[ `uname -s` = 'Linux' ] && stow awesome
stow doom
stow git
stow nvim
[ `uname -s` = 'Darwin' ] && stow tmux
stow vim
stow X11
stow zsh
