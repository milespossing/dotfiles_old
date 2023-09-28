#!/bin/bash

sudo apt update
sudo apt upgrade -y

# TODO: Make this a bit more contextual (ie we don't need all these packages necessarily)
sudo apt install -y pkg-config libssl-dev build-essential curl git \
	zsh cmake unzip gpg dirmngr gawk libtool

# Homebrew
if test "/home/linuxbrew"; then
	echo "Skipping brew"
else
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

if test -f "$(which gum)"; then
	echo "gum already installed"
else
	brew install gum
fi

# TODO: Ask First
brew install neovim

# Rustup
if test "$HOME/.cargo"; then
	echo "Skipping cargo"
else
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

source "$HOME/.cargo/env"

gum confirm "Would you like to install basic userland packages?" &&
	source ./core/brew.sh &&
	source ./core/cargo.sh

# asdf
if test -d "$HOME/.asdf"; then
	echo "Skiping asdf as it's already installed"
else
	git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
fi

. "$HOME/.asdf/asdf.sh"

gum confirm "Install asdf environments?" && source ./core/asdf.sh

# Fonts

gum confirm "Install FiraMono Font?" && source ./installers/font.sh

# emacs

## Install
gum confirm "Install emacs?" &&
	sudo add-apt-repository ppa:kelleyk/emacs &&
	sudo apt install -y emacs28-nativecomp

## Configure userland

gum confirm "Update doom config?" && source installers/doom.sh

gum confirm "Copy Private Doom Config Files?" && source installers/doom-config.sh

# Starship
gum confirm "Would you like to install starship?" && source installers/starship.sh

# Zellij
gum confirm "Would you like to install Zellij?" && source installers/zellij.sh

# zsh
sudo chsh $(whoami) -s $(which zsh)
gum confirm "Would you like to update your zsh configuration?" && source installers/zsh.sh

# neovim
gum confirm "Configure neovim?" && source installers/nvim.sh

gum style \
	--foreground 212 --border-foreground 212 --border double \
	--align center --width 50 --margin "1 2" --padding "2 4" \
	'Finished! It would be best if you restarted the shell'
