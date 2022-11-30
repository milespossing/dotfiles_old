export EDITOR=nvim
export VISUAL=vi
source "$HOME/.local.zsh"
source "$ZSH_CUSTOM/zsh-tools.zsh"

__load-all-plugins

eval "$(starship init zsh)"
export PATH=$PATH:$HOME/.path
