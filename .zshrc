if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ]; then
  [ -z "${TMUX}" ] && { tmux attach || tmux; } >/dev/null 2>&1
fi
autoload -Uz compinit && compinit
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward
setopt HIST_EXPIRE_DUPS_FIRST
unsetopt BEEP
setopt appendhistory
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export DOTFILES="$HOME/dotfiles"

source <(kubectl completion zsh)
source <(helm completion zsh)
eval "$(_MOLECULE_COMPLETE=SHELL_source molecule)"

export BROWSER="brave"
export EDITOR="lvim"
export TERMINAL="kitty"
export READER="zathura"

alias change="lvim ~/.zshrc"
alias att="sudo pacman -Syyuu"
alias update="source ~/.zshrc"
alias clip="xclip -sel clip <"
alias kbconf="lvim ~/.kube/config"
alias dc="docker-compose"
alias lcontext="kubectl config get-contexts"
alias ucontext="kubectl config use-context"
alias l="exa -blnar -s mod"
alias ls="exa"
alias find="fd"
alias vim="lvim"
alias nvim="lvim"

. $DOTFILES/z/z.sh

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

KEYTIMEOUT=1
export KB=$HOME/.kube
export KUBECONFIG=$KB/prod:$KB/homolog:$KB/dev:$KB/credinet-prod

#vim mode config
bindkey -v
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

precmd() { RPROMPT="" }
function zle-line-init zle-keymap-select {
   VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
   RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
   zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

eval $(thefuck --alias)

export PATH=$HOME/bin/ctags/:$HOME/.local/bin:$HOME/.asdf/shims:$HOME/.asdf/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$HOME/.fzf/bin:~/go/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
