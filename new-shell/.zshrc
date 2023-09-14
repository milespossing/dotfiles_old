export EDITOR=nvim
export VISUAL=vi
source "$HOME/.local.zsh"
source "$ZSH_CUSTOM/zsh-tools.zsh"

core_plugins=(
  $ZSH_CUSTOM/alias.plugin.zsh
)

min_plugins+=("${core_plugins[@]}")

# IF vs code, stay minimum
if [[ "$TERM_PROGRAM" == "vscode" ]]; then
  MIN_SHELL=0
fi

__load-all-plugins

eval "$(starship init zsh)"
export PATH=$PATH:$HOME/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
