#!/bin/bash
echo "installing tmux config"
mkdir -p $HOME/.tmux/plugins
ln -f tmux/.tmux.conf $HOME/.tmux.conf
ln -f .tmux.conf.local $HOME
ln -sf tpm $HOME/.tmux/plugins/tpm
