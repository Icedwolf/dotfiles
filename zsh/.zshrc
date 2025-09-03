fpath+=($HOME/.config/zsh/pure)
autoload -Uz promptinit; promptinit
prompt pure
unset HISTFILE
autoload -z compinit
compinit -C
KEYTIMEOUT=1
unsetopt BEEP

setopt AUTO_CD
setopt CORRECT
setopt CDABLE_VARS
setopt EXTENDED_GLOB
setopt MENU_COMPLETE
setopt AUTOLIST
setopt COMPLETE_IN_WORD
setopt AUTO_PARAM_SLASH
setopt AUTO_MENU
setopt LIST_AMBIGUOUS
setopt COMPLETE_ALIASES

source $DOTFILES/zsh/aliases.zsh
source $DOTFILES/zsh/functions.zsh
source $DOTFILES/zsh/vim.zsh
source $DOTFILES/zsh/completions.zsh

eval "$(atuin init zsh)"

source $DOTFILES/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $DOTFILES/zsh/fsh/fast-syntax-highlighting.plugin.zsh
source $DOTFILES/zsh/zsh-z/zsh-z.plugin.zsh
