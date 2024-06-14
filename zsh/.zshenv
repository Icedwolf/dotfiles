# Skip global init
skip_global_compinit=1

# XDG
export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:-/run/user/$(id -u)}
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
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
export WORDCHARS=""
export ZSH_HIGHLIGHT_MAXLENGTH=100
export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
export ZSH_AUTOSUGGEST_STRATEGY=(atuin_top completion)

# Z jump
export _Z_DATA="$DOTFILES/z/z.data"

# Devs
export CARGO_HOME="$XDG_CONFIG_HOME/cargo"
export DOTNET_ROOT="$XDG_CONFIG_HOME/dotnet"
export NUGET_PACKAGES="$XDG_CONFIG_HOME/nuget"
export DOTNET_CLI_HOME="$XDG_CONFIG_HOME/dotnet"
export OPAMROOT="$XDG_CONFIG_HOME/opam"
export HEX_HOME="$XDG_CONFIG_HOME/hex"
export MIX_HOME="$XDG_CONFIG_HOME/mix"
export GOPATH="$XDG_CONFIG_HOME/go"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export MOZ_PROFILE="$XDG_CONFIG_HOME/firefox"

# Apps
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--color=fg:#d0d0d0,hl:#5f87af --color=fg+:#d0d0d0,bg+:#262626,hl+:#5fd7ff --color=info:#afaf87,prompt:#d7005f,pointer:#af5fff --color=marker:#87ff00,spinner:#af5fff,header:#87afaf'
export KB=$XDG_CONFIG_HOME/.kube
export KUBECONFIG=$KB/credinet_prod:$KB/cred-hml:$KB/rancher01:$KB/rancher01-hml01:$KB/rancher-ggdc:$KB/minikube
export KUBECACHEDIR=$XDG_CACHE_HOME/kube
export KUBECOLOR_CONFIG="$DOTFILES/kubecolor/"
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/podman/podman.sock
export DOCKER_SOCK=$XDG_RUNTIME_DIR/podman/podman.sock

# PATHS
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH=$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:$XDG_CONFIG_HOME/go/bin:$XDG_CONFIG_HOME/cargo/bin:$HOME/.local/share/gem/ruby/3.0.0/bin:$DOTFILES/scripts:$PNPM_HOME
