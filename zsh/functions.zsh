#!/bin/zsh

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
