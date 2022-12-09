#!/bin/bash

echo "Installing utilities..."

echo "Would you like to install homebrew? [y/N]"
read INSTALL_HOMEBREW
if [ "$INSTALL_HOMEBREW" = "y" ] ; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

#echo "Would you like to install rust? [y/N]"
#read INSTALL_RUST

