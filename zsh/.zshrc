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
setopt HIST_REDUCE_BLANKS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

source $DOTFILES/zsh/vim.zsh
source $DOTFILES/zsh/functions.zsh
source $DOTFILES/zsh/aliases.zsh
source $DOTFILES/zsh/exports.zsh
source $DOTFILES/zsh/completions.zsh
source $DOTFILES/z/z.sh

# PLUGINS
source $DOTFILES/zsh/fsh/fast-syntax-highlighting.plugin.zsh
source $DOTFILES/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#eval "$(starship init zsh)"
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
eval "$(atuin init zsh)"

autoload -Uz compinit;
_comp_options+=(globdots) # With hidden files
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
    compinit;
    rm -f ${ZDOTDIR}/.zcompdump.zwc
    zcompile ${ZDOTDIR}/.zcompdump
else
    compinit -C;
fi;
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
