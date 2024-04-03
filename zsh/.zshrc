KEYTIMEOUT=1
unsetopt BEEP

setopt AUTO_CD
setopt CORRECT
setopt CDABLE_VARS
setopt EXTENDED_GLOB
setopt MENU_COMPLETE
setopt AUTOLIST
setopt COMPLETE_IN_WORD
setopt COMPLETE_ALIASES
setopt AUTO_PARAM_SLASH
setopt AUTO_MENU
setopt LIST_AMBIGUOUS

source $DOTFILES/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source $DOTFILES/zsh/vim.zsh
source $DOTFILES/zsh/functions.zsh
source $DOTFILES/zsh/aliases.zsh
source $DOTFILES/zsh/exports.zsh
source $DOTFILES/zsh/completions.zsh
#source $DOTFILES/z/z.sh

eval "$(atuin init zsh)"
eval "$(zoxide init zsh)"

autoload -Uz compinit 
_comp_options+=(globdots) # With hidden files
compinit -C

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source $ZDOTDIR/.p10k.zsh
source $DOTFILES/zsh/fsh/fast-syntax-highlighting.plugin.zsh
