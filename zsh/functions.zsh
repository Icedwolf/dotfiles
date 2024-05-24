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

_lazy_opam_aliases=(
    ocaml{,{c,opt}{,p},lex,mktop,mklib,dep,objinfo,prof,doc}{,.opt,.byte}
    ocamlbuild{,.byte,.native}
    ocaml{find{,_opt},debug,format,yacc,run{,i,d},lsp,merlin{,-server},-language-server}
    dune
    utop
    opam
)
_ensure_opam_env() {
    if [ -z "$OPAM_SWITCH_PREFIX" ]; then
        unalias opam
        eval "$(opam env)"
        unalias "${_lazy_opam_aliases[@]}"
    fi >/dev/null 2>&1
    "$@"
}
for _raw_ocaml_command in "${_lazy_opam_aliases[@]}"; do
    alias "$_raw_ocaml_command=_ensure_opam_env $_raw_ocaml_command"
done
