# Skip global init
skip_global_compinit=1
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export DOTFILES="$HOME/dotfiles"
export _Z_DATA="$DOTFILES/z/z.data"
export BROWSER="firefox"
export EDITOR="lvim"
export VISUAL="lvim"
export TERMINAL="alacritty"
export READER="zathura"
export PAGER="less"
export PATH=$HOME/bin/ctags/:$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$HOME/.fzf/bin:~/go/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.cargo/bin:$HOME/.local/share/gem/ruby/3.0.0/bin:$HOME/scripts/:$DOTFILES/scripts
export LESS="--RAW-CONTROL-CHARS"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000               
export SAVEHIST=10000               
