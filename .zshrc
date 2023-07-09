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

# HIST
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.

function bwu() {
    BW_STATUS=$(bw status | jq -r .status)
    case "$BW_STATUS" in
    "unauthenticated")
        echo "Logging into BitWarden"
        export BW_SESSION=$(bw login --raw)
        ;;
    "locked")
        echo "Unlocking Vault"
        export BW_SESSION=$(bw unlock --raw)
        ;;
    "unlocked")
        echo "Vault is unlocked"
        ;;
    *)
        echo "Unknown Login Status: $BW_STATUS"
        return 1
        ;;
    esac
    bw sync
}

# SOURCES
source <(kubectl completion zsh)
source <(helm completion zsh)
source <(k3d completion zsh)
source <(bw completion --shell zsh)
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# ALIASES
alias change="lvim ~/.zshrc"
alias att="paru -Syyuu --skipreview --nouseask --failfast --norebuild --noredownload --cleanafter; notify-send att-done"
alias update="source ~/.zshrc"
alias clip="xclip -sel clip <"
alias kbconf="lvim ~/.kube/config"
alias dc="docker-compose"
alias dk='docker stop $(docker ps -qa);docker system prune -af --volumes; notify-send docker kill done'
alias lcontext="kubectl config get-contexts"
alias ucontext="kubectl config use-context"
alias l="exa -blnar -s mod"
alias ls="exa"
alias find="fd"
alias vim="lvim"
alias nvim="lvim"
alias attvim="lvim +LvimUpdate +q"
alias cleancache="rm -rf ~/.cache"
alias dotfiles="lvim ~/Documents/dotfiles"
alias kube="kubectl"

#  EXPORTS
export DOTFILES="$HOME/dotfiles"
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export PATH=$HOME/bin/ctags/:$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$HOME/.fzf/bin:~/go/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.cargo/bin:$HOME/.local/share/gem/ruby/3.0.0/bin:$HOME/scripts/:$DOTFILES/scripts
#export clusters context
export KB=$HOME/.kube
 export KUBECONFIG=$KB/credinet_prod:$KB/dev:$KB/local:$KB/cred-hml:$KB/rancher01:$KB/rancher01-hml
export BROWSER="firefox"
export EDITOR="lvim"
export TERMINAL="alacritty"
export READER="zathura"

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
