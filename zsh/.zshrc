KEYTIMEOUT=1
unsetopt BEEP
setopt interactive_comments

# CD
setopt AUTO_CD              # Go to folder path without using cd.
setopt CORRECT              # Spelling correction
setopt CDABLE_VARS          # Change directory to a path stored in a variable.
setopt EXTENDED_GLOB        # Use extended globbing syntax.

# VIM MODE CONFIG
source $DOTFILES/zsh/vim.zsh

# SSH GPG 
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
gpg-connect-agent updatestartuptty /bye > /dev/null

# FUNCTIONS
source $DOTFILES/zsh/functions.zsh

# ALIASES
source $DOTFILES/zsh/aliases.zsh

# EXPORTS
source $DOTFILES/zsh/exports.zsh

# COMPLETIONS
source $DOTFILES/zsh/completions.zsh

# SOURCES
source $DOTFILES/z/z.sh
eval "$(starship init zsh)"
eval "$(atuin init zsh)"

# PLUGINS
source $DOTFILES/zsh/fsh/fast-syntax-highlighting.plugin.zsh
source $DOTFILES/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
