today(){
  nvim "$VAULT_DIR/daily/$(date -I).md"
}

vault(){
  nvim "$VAULT_DIR"
}
