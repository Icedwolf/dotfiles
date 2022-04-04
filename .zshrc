export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(git tmux)
ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh

alias change="nvim ~/.zshrc"
alias att="sudo pacman -Syyuu"
alias update="source ~/.zshrc"
alias clip="xclip -sel clip <"

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="λ"
SPACESHIP_CHAR_SUFFIX=" "

source '/home/celio/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions

. $HOME/z.sh

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

export PATH=~/bin:$PATH

export PATH=$HOME/bin/ctags/:$HOME/.rbenv/plugins/ruby-build/bin:$HOME/.rbenv/shims:$HOME/.rbenv/bin:$HOME/.local/bin:$HOME/.asdf/shims:$HOME/.asdf/bin:$HOME/.nvm/versions/node/v12.8.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:$HOME/.fzf/bin:$HOME/.local/share/gem/ruby/3.0.0/bin

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH=~/go/bin:$PATH

KEYTIMEOUT=1

#vim mode config
bindkey -v
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search
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
[ -f "/home/celio/.ghcup/env" ] && source "/home/celio/.ghcup/env" # ghcup-env

eval $(thefuck --alias)


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

PATH="/home/celio/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/celio/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/celio/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/celio/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/celio/perl5"; export PERL_MM_OPT;
