# Skip global init
skip_global_compinit=1

# XDG
export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:-/run/user/$(id -u)}
export XDG_CONFIG_HOME="$HOME/.config"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
# Default apps
export BROWSER="mercury-browser"
export MOZ_ENABLE_WAYLAND=1
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="alacritty"
export READER="zathura"
export MANPAGER="sh -c 'bat --style=plain --color=always -l man -p'"
export OBSIDIAN_VAULT="$HOME/Documents/vault/"

# ZSH envs
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export DOTFILES="$HOME/dotfiles"
export HISTSIZE=0
export SAVEHIST=0
export DISABLE_AUTO_TITLE=true
export WORDCHARS="${WORDCHARS/\//}"
# Z jump
export _Z_DATA="$DOTFILES/z/z.data"

# PATHS
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH=$HOME/bin/ctags/:$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:~/go/bin:$HOME/.cargo/bin:$HOME/.local/share/gem/ruby/3.0.0/bin:$DOTFILES/scripts:$PNPM_HOME
