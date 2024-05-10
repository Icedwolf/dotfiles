function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

function smart_cat() {
    if [ -t 1 ]; then
        bat --paging=never --theme="Monokai Extended" --style=full --color=always "$@"
    else
        command cat "$@"
    fi
}

_zsh_autosuggest_strategy_atuin_top() {
    suggestion=$(atuin search --cmd-only --limit 1 --search-mode prefix $1)
}

autoload -Uz bashcompinit && bashcompinit
_get_kube_contexts() {
  local -a contexts
  contexts=($(kubectl config get-contexts -o=name))
  _describe 'values' contexts
}
compdef _get_kube_contexts ucontext
