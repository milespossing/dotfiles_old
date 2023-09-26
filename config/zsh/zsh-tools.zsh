zsh-reload(){
  source $HOME/.zshrc
}

__load-basic-plugin(){
  source $1
}

__load-all-plugins(){
  for plugin in $min_plugins
  do
    __load-basic-plugin $plugin
  done
  if [[ -z $MIN_SHELL ]]; then
    for plugin in $full_plugins; do
      __load-basic-plugin $plugin
    done
  fi
}
