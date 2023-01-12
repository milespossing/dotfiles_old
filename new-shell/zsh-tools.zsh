zsh-reload(){
  source $HOME/.zshrc
}

__load-basic-plugin(){
  source $1
}

__load-all-plugins(){
  for plugin in $plugins
  do
    __load-basic-plugin $plugin
  done
}
