KEYTIMEOUT=1
unsetopt BEEP

setopt AUTO_CD
setopt CORRECT
setopt CDABLE_VARS
setopt EXTENDED_GLOB
setopt MENU_COMPLETE
setopt AUTOLIST
setopt COMPLETE_IN_WORD
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt COMPLETE_ALIASES
setopt AUTO_PARAM_SLASH
setopt AUTO_MENU
setopt LIST_AMBIGUOUS

source $DOTFILES/zsh/vim.zsh
source $DOTFILES/zsh/functions.zsh
source $DOTFILES/zsh/aliases.zsh
source $DOTFILES/zsh/exports.zsh
source $DOTFILES/zsh/completions.zsh

# SOURCES
source $DOTFILES/z/z.sh
eval "$(starship init zsh)"
eval "$(atuin init zsh)"

# PLUGINS
source $DOTFILES/zsh/fsh/fast-syntax-highlighting.plugin.zsh
source $DOTFILES/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
