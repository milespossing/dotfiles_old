#!/bin/bash
# Installs zsh configuration

ln -f config/zsh/.zshrc $HOME/.zshrc
cp -f config/zsh/.local.zsh $HOME/.local.zsh
sed -i "1iexport DOTFILES_DIR=$(pwd)" $HOME/.local.zsh
touch $HOME/.alias.zsh
