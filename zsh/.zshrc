KEYTIMEOUT=1
unsetopt BEEP

setopt AUTO_CD
setopt CORRECT
setopt CDABLE_VARS
setopt EXTENDED_GLOB
setopt MENU_COMPLETE
setopt AUTOLIST
setopt COMPLETE_IN_WORD
HISTFILE=
HISTSIZE=SAVEHIST=0

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
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_HIGHLIGHT_MAXLENGTH=100
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
source $DOTFILES/zsh/fsh/fast-syntax-highlighting.plugin.zsh
source $DOTFILES/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
