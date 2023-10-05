if [[ $OSTYPE = "darwin"* ]]; then
	# is mac
	nu_dir="$HOME/Library/Application Support/nushell"
elif [[ "$OSTYPE" == "linux-gpu" ]]; then
	# is linux
	"nu_dir=$HOME/.config/nushell"
fi

mkdir -p $nu_dir

ln -f config/nushell/config.nu $nu_dir/config.nu
ln -f config/nushell/env.nu $nu_dir/env.nu
touch $HOME/.local.nu
