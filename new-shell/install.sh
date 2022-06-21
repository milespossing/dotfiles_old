ln -f .zshrc $HOME/.zshrc
cp -f .local.zsh $HOME/.local.zsh
echo "ZSH_CUSTOM=$(pwd)" >> $HOME/.local.zsh