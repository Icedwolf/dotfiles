KEYTIMEOUT=1
autoload -Uz compinit && compinit
unsetopt BEEP
setopt interactive_comments

# CD
setopt AUTO_CD              # Go to folder path without using cd.
setopt AUTO_PUSHD           # Push the old directory onto the sta
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.
setopt CORRECT              # Spelling correction
setopt CDABLE_VARS          # Change directory to a path stored in a variable.
setopt EXTENDED_GLOB        # Use extended globbing syntax.

export DOTFILES="$HOME/dotfiles"

# SOURCES
source <(kubectl completion zsh)
source <(helm completion zsh)
source <(k3d completion zsh)
source <(bw completion --shell zsh)

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

# PLUGINS
source $DOTFILES/zsh/fsh/fast-syntax-highlighting.plugin.zsh
source $DOTFILES/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# ALIASES
alias change="lvim ~/.zshrc"
alias att="paru -Syyuu --skipreview --nouseask --failfast --norebuild --noredownload --cleanafter; notify-send att-done"
alias update="source ~/.zshrc"
alias kbconf="lvim ~/.kube/config"
alias lcontext="kubectl config get-contexts"
alias ucontext="kubectl config use-context"
alias l="exa -blnar -s mod --icons"
alias ls="exa --icons"
alias vim="lvim"
alias nvim="lvim"
alias attvim="lvim +LvimUpdate +q"
alias cleancache="rm -rf ~/.cache"
alias dotfiles="lvim $DOTFILES"
alias kube="kubectl"
alias clima="curl wttr.in/Blumenau"
alias config="lvim /home/icedwolf/.config"
alias tf="terraform"
alias docker-compose="podman-compose"

#  EXPORTS
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
#export clusters context
export KB=$HOME/.kube
export KUBECONFIG=$KB/credinet_prod:$KB/dev:$KB/local:$KB/cred-hml:$KB/rancher01:$KB/rancher01-hml:$KB/rancher-ggdc
export BROWSER="firefox"
export EDITOR="lvim"
export TERMINAL="alacritty"
export READER="zathura"
export PAGER="less"
export LESS="--RAW-CONTROL-CHARS"

#vim mode config
bindkey -v
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward
bindkey "^k" up-line-or-search
bindkey "^j" down-line-or-search
bindkey -M vicmd "^k" up-line-or-search
bindkey -M vicmd "^j" down-line-or-search
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

if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ]; then
  [ -z "${TMUX}" ] && { tmux attach || tmux; } >/dev/null 2>&1
fi

eval "$(starship init zsh)"
eval $(thefuck --alias)
eval "$(atuin init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DOCKER_HOST=unix:///run/user/1000/podman/podman.sock

export PATH=$HOME/bin/ctags/:$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$HOME/.fzf/bin:~/go/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.cargo/bin:$HOME/.local/share/gem/ruby/3.0.0/bin:$HOME/scripts/:$DOTFILES/scripts
