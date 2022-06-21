#!/bin/bash
echo "installing tmux config"
ln -f oh-my-tmux/.tmux.conf $HOME/.tmux.conf
cp -f oh-my-tmux/.tmux.conf.local $HOME
