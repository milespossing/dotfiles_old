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
ln vim/.vimrc $HOME/.vimrc
ln vim/init.vim $HOME/.config/nvim/init.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PlugInstall +qall


###########################
# tmux										#
###########################

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln .tmux.conf $HOME/.tmux.conf

###########################
# other										#
###########################

cd LS_COLORS
./install.sh
cd ..

