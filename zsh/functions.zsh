function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

_zsh_autosuggest_strategy_atuin_top() {
    suggestion=$(atuin search --cmd-only --limit 1 --search-mode prefix $1)
}

_get_kube_contexts() {
  local -a contexts
  contexts=($(kubectl config get-contexts -o=name))
  _describe 'values' contexts
}

f() {
  local selection
  selection=$(fd --hidden --follow --exclude '.git' "$@" | fzf --preview '
    if [ -d {} ]; then
      ls -la {}
    else
      cat {}
    fi
  ' --height 60% --border --prompt '∴ ') || return 0
  
  if [ -d "$selection" ]; then
    cd "$selection"
  elif [ -f "$selection" ]; then
    nvim "$selection"
  fi
}
