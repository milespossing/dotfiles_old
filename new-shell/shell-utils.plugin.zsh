# Requirements:
# Bat
# rg
# fzf

# fzf
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"
alias bfzf="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

