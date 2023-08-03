KEYTIMEOUT=1
unsetopt BEEP
setopt interactive_comments
export DOTFILES="$HOME/dotfiles"

# CD
setopt AUTO_CD              # Go to folder path without using cd.
setopt CORRECT              # Spelling correction
setopt CDABLE_VARS          # Change directory to a path stored in a variable.
setopt EXTENDED_GLOB        # Use extended globbing syntax.

# VIM MODE CONFIG
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

# EDIT COMMAND LINE
zle -N zle-line-init
zle -N zle-keymap-select
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# SSH GPG
gpgconf --launch gpg-agent
gpg-connect-agent updatestartuptty /bye > /dev/null

# PODMAN ROOTLESS DOCKER SOCK 
XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:-/run/user/$(id -u)}

# FUNCTIONS
source $DOTFILES/zsh/functions

# ALIASES
source $DOTFILES/zsh/aliases

# EXPORTS
source $DOTFILES/zsh/exports

# COMPLETIONS
fpath=($DOTFILES/zsh/completions $fpath)
fpath=($DOTFILES/zsh/zsh-completions/src $fpath)
setopt MENU_COMPLETE
setopt AUTO_LIST
setopt COMPLETE_IN_WORD
setopt GLOB_COMPLETE
autoload -Uz compinit;
if [[ -n ${HOME}/.zcompdump(#qN.mh+24) ]]; then
    compinit;
else
    compinit -C;
fi;
_comp_options+=(globdots) # With hidden files

# PLUGINS
source $DOTFILES/zsh/fsh/fast-syntax-highlighting.plugin.zsh
source $DOTFILES/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# SOURCES
[[ -r "${DOTFILES}/z/z.sh" ]] && source $DOTFILES/z/z.sh
eval "$(starship init zsh)"
eval "$(atuin init zsh)"
