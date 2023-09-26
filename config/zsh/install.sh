ln -f .zshrc $HOME/.zshrc
touch $HOME/.local.zsh
echo "ZSH_CUSTOM=$(pwd)" >>$HOME/.local.zsh
echo "min_plugins=()" >>$HOME/.local.zsh
echo "full_plugins=()" >>$HOME/.local.zsh
