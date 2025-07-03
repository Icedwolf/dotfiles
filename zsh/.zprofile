local bin_paths=(
  "$HOME/.local/bin"
  "$XDG_CONFIG_HOME/go/bin"
  "$XDG_CONFIG_HOME/cargo/bin"
  "$HOME/dotfiles/scripts"
  "$HOME/.local/share/pnpm"
  "$GEM_HOME/bin"
)

path=($path)

for p in "${bin_paths[@]}"; do
  if [[ -d "$p" ]]; then
    path=("$p" $path)
  fi
done

typeset -U path
export PATH
export KUBECONFIG=$(find "$KB" -name "*.yaml" 2>/dev/null | tr '\n' ':' | sed 's/:$//')
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
