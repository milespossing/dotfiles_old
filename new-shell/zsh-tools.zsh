zsh-reload(){
  source $HOME/.zshrc
}

__load-custom-plugin(){
  source "$ZSH_CUSTOM/$1.zsh"
}

__load-all-plugins(){
  for plugin in $plugins
  do
    __load-custom-plugin $plugin
  done
}