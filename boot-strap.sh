#!/bin/bash

REPO="https://github.com/milespossing/dotfiles.git"
DOTFILES="$HOME/.dotfiles"

if [ -d "$DOTFILES" ]; then
	echo dotfiles dir already exists, skipping clone
else
	git clone $REPO $DOTFILES
	git submodule init
fi
cd $DOTFILES
git submodule update

