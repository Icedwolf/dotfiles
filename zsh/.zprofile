local bin_paths=(
  "$HOME/.local/bin"
  "$XDG_CONFIG_HOME/go/bin"
  "$XDG_CONFIG_HOME/cargo/bin"
  "$XDG_CONFIG_HOME/go"
  "${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
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
_kubeconfig_cache_file="$XDG_CACHE_HOME/kubeconfigs"
if [[ ! -f "$_kubeconfig_cache_file" || $(find "$_kubeconfig_cache_file" -mmin +5) ]]; then
  export KUBECONFIG=$(find "$KB" -name "*.yaml" 2>/dev/null | tr '\n' ':' | sed 's/:$//')
  echo "$KUBECONFIG" > "$_kubeconfig_cache_file"
else
  export KUBECONFIG=$(cat "$_kubeconfig_cache_file")
fi
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

export PNPM_HOME="/home/icedwolf/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

for secret_file in "$HOME"/dotfiles/secrets/*.sh(N); do
  source "$secret_file"
done
