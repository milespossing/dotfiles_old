#!/bin/bash

echo "installing vim settings"
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.vim/bundle
ln -f .vimrc $HOME/.vimrc
echo "source $HOME/.vimrc" > $HOME/.config/nvim/init.vim
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
	echo "Cloning vundle"
	git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi
