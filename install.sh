###########################
# zsh                     #
###########################

# echo "zsh -- omz"
# cp -f zsh/omz.local.start.zsh $HOME/.local.zsh
# echo "ZSH_CUSTOM=$(pwd)/zsh/zsh-custom" >> $HOME/.local.zsh
# ln -f zsh/omz.zshrc $HOME/.zshrc

cd new-shell
./install.sh
cd ..

###########################
# vim                     #
###########################

./install_vim.sh

###########################
# tmux                    #
###########################

echo "tmux"
ln -f oh-my-tmux/.tmux.conf $HOME/.tmux.conf
cp -f oh-my-tmux/.tmux.conf.local $HOME

