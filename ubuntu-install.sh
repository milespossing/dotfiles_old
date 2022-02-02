#!/bin/bash

mkdir -p /tmp

# apt
sudo apt update
sudo apt upgrade -y
sudo apt install -y zsh git-core curl fonts-powerline tmux jq neovim

# omz
echo checking for oh my zsh
if [ -d "$HOME/.oh-my-zsh" ]; then
	echo "omz already installed"
else
	echo "installing oh my zsh"
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# brew

test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
test -r ~/.bash_profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.bash_profile
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.profile

brew install gcc python3 fzf exa bat zoxide

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# rust
if [ -d "$HOME/.cargo" ]; then
	echo "cargo already installed"
else
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

# dotnet
if [ ! -d "$HOME/.dotnet" ]; then
	/bin/bash -c "$(curl -fsSL https://dot.net/v1/dotnet-install.sh)"
fi
sudo ln -f $HOME/.dotnet/dotnet /usr/bin/dotnet

./install.sh
