cargo install nu coreutils

nu_dir=$HOME/.config/nushell
mkdir -p $nu_dir

ln -f config/nushell/config.nu $nu_dir/config.nu
ln -f config/nushell/env.nu $nu_dir/env.nu
touch $HOME/.local.nu
