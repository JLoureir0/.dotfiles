#!/bin/sh
sh <(curl -L https://nixos.org/nix/install) --no-daemon

. ~/.nix-profile/etc/profile.d/nix.sh

nix-env -iA \
	nixpkgs.stow \
	nixpkgs.git \
	nixpkgs.openfortivpn \
	nixpkgs.alacritty \
	nixpkgs.emacs \
	nixpkgs.vim \
	nixpkgs.neovim \
	nixpkgs.flameshot \
	nixpkgs.google-chrome \
	nixpkgs.postman \
	nixpkgs.slack \
	nixpkgs.discord \
	nixpkgs.zoom \
	nixpkgs.krita \
	nixpkgs.virtualboxWithExtpack \
    nixpkgs.jetbrains.idea-ultimate

stow allacritty
stow zsh
[ `uname -s` = 'Linux' ] && stow awesome && stow X11
[ `uname -s` = 'Darwin' ] && stow tmux
stow git
stow doom
stow nvim
stow vim

if [ `uname -s` = 'Darwin' ];
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

if [ `uname -s` = 'Darwin' ];
then
    brew install --cask \
        raycast \
        sequel-ace \
        stats
fi

curl -s "https://get.sdkman.io" | bash

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
