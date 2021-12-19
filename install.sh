###########################
# zsh											#
###########################

ln linux/.zshrc $HOME/.zshrc
cd zsh-custom
./install.sh
cd ..

###########################
# vim											#
###########################

mkdir -p $HOME/.config/nvim
ln .vimrc $HOME/.vimrc
echo "source $HOME/.vimrc" >> $HOME/.config/nvim/init.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PlugInstall +qall


###########################
# tmux										#
###########################

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln .tmux.conf $HOME/.tmux.conf

