###########################
# zsh                     #
###########################

echo "zsh"
cp -f .local.start.zsh $HOME/.local.zsh
echo "ZSH_CUSTOM=$(pwd)/zsh-custom" >> $HOME/.local.zsh
ln -f .zshrc $HOME/.zshrc
mkdir $HOME/.config
ln -f starship.toml $HOME/.config/starship.toml

###########################
# vim                     #
###########################

echo "vim"
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.vim/bundle
ln -f .vimrc $HOME/.vimrc
ln -f .ideavimrc $HOME/.ideavimrc
echo "source $HOME/.vimrc" > $HOME/.config/nvim/init.vim
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
	echo "Cloning vundle"
	git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi
vim +PlugInstall +qall


###########################
# tmux                    #
###########################

echo "tmux"
ln -f oh-my-tmux/.tmux.conf $HOME/.tmux.conf
cp -f oh-my-tmux/.tmux.conf.local $HOME

