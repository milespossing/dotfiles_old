ln -f .zshrc $HOME/.zshrc
touch $HOME/.local.zsh
echo "ZSH_CUSTOM=$(pwd)" >>$HOME/.local.zsh
echo "min_plugins=()" >>$HOME/.local.zsh
echo "full_plugins=()" >>$HOME/.local.zsh

mkdir -p $HOME/.config/starship
ln -f starship.toml $HOME/.config/starship/starship.toml

echo "Would you like to install starship using curl? [y/N]"
read INSTALL_STARSHIP

if [ "$INSTALL_STARSHIP" = "y" ] || [ "$INSTALL_STARSHIP" = "Y" ]; then
	curl -sS https://starship.rs/install.sh | sh
fi
