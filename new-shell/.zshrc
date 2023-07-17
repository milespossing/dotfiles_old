export EDITOR=nvim
export VISUAL=vi
source "$HOME/.local.zsh"
source "$ZSH_CUSTOM/zsh-tools.zsh"

__load-all-plugins

eval "$(starship init zsh)"
export PATH=$PATH:$HOME/.path

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
