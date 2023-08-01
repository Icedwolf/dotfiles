KEYTIMEOUT=1
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

# +---------+
# | HISTORY |
# +---------+

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.

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

# SOURCES
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
eval "$(starship init zsh)"
eval "$(thefuck --alias)"
eval "$(atuin init zsh)"

# FUNCTIONS
source $DOTFILES/zsh/functions

# ALIASES
source $DOTFILES/zsh/aliases

# EXPORTS
source $DOTFILES/zsh/exports

# COMPLETIONS
zmodload zsh/complist

autoload -Uz compinit 
if [[ -n ${HOME}/.zcompdump(#qN.mh+24) ]]; then
    compinit;
else
    compinit -C;
fi;

_comp_options+=(globdots) # With hidden files
source <(kubectl completion zsh)
source <(helm completion zsh)
source <(k3d completion zsh)
source <(bw completion --shell zsh)
source <(k6 completion zsh)

# PLUGINS
source $DOTFILES/zsh/fsh/fast-syntax-highlighting.plugin.zsh
source $DOTFILES/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
