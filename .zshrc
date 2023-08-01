KEYTIMEOUT=1
autoload -Uz compinit && compinit
unsetopt BEEP
setopt interactive_comments
export DOTFILES="$HOME/dotfiles"

# CD
setopt AUTO_CD              # Go to folder path without using cd.
setopt AUTO_PUSHD           # Push the old directory onto the sta
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.
setopt CORRECT              # Spelling correction
setopt CDABLE_VARS          # Change directory to a path stored in a variable.
setopt EXTENDED_GLOB        # Use extended globbing syntax.

# EXPORTS
source $DOTFILES/zsh/exports

# SOURCES
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

# PLUGINS
source $DOTFILES/zsh/fsh/fast-syntax-highlighting.plugin.zsh
source $DOTFILES/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# FUNCTIONS
source $DOTFILES/zsh/functions

# ALIASES
source $DOTFILES/zsh/aliases


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

zle -N zle-line-init
zle -N zle-keymap-select
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line


# SSH GPG
gpgconf --launch gpg-agent
gpg-connect-agent updatestartuptty /bye > /dev/null

# PODMAN ROOTLESS DOCKER SOCK 
XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:-/run/user/$(id -u)}

# COMPLETIONS
source <(kubectl completion zsh)
source <(helm completion zsh)
source <(k3d completion zsh)
source <(bw completion --shell zsh)

eval "$(starship init zsh)"
eval $(thefuck --alias)
eval "$(atuin init zsh)"
