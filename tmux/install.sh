mkdir -p $HOME/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln .tmux.conf $HOME/.tmux.conf
touch $HOME/.tmux.local.conf
