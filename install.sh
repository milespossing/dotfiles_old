###########################
# zsh											#
###########################

echo "zsh"
cp -f .local.start.zsh $HOME/.local.zsh
echo "ZSH_CUSTOM=$(pwd)/zsh-custom" >> $HOME/.local.zsh
ln -f .zshrc $HOME/.zshrc

###########################
# vim											#
###########################

echo "vim"
mkdir -p $HOME/.config/nvim
ln -f .vimrc $HOME/.vimrc
echo "source $HOME/.vimrc" >> $HOME/.config/nvim/init.vim
ln -Fs vundle $HOME/.vim/bundle/Vundle.vim
nvim +PlugInstall +qall


###########################
# tmux										#
###########################

echo "tmux"
ln -Fs tpm $HOME/.tmux/plugins/tpm
ln -f .tmux.conf $HOME/.tmux.conf

