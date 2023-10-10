# Skip global init
skip_global_compinit=1

# XDG
export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:-/run/user/$(id -u)}
export XDG_CONFIG_HOME="$HOME/.config"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
# Default apps
export BROWSER="firefox"
export MOZ_ENABLE_WAYLAND=1
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="alacritty"
export READER="zathura"
export MANPAGER="sh -c 'bat --style=plain --color=always -l man -p'"
export OBSIDIAN_VAULT="$HOME/Documents/obvault/"

# ZSH envs
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export DOTFILES="$HOME/dotfiles"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

# Z jump
export _Z_DATA="$DOTFILES/z/z.data"

# PATHS
export PATH=$HOME/bin/ctags/:$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$HOME/.fzf/bin:~/go/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.cargo/bin:$HOME/.local/share/gem/ruby/3.0.0/bin:$DOTFILES/scripts
