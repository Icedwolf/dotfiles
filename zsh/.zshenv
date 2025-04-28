skip_global_compinit=1

export WLR_NO_HARDWARE_CURSORS=1
export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export LIBVA_DRIVER_NAME=nvidia

export XDG_SESSION_TYPE="wayland"
export XDG_CURRENT_DESKTOP="sway"
export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:-/run/user/$(id -u)}
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export GTK_THEME=Adwaita:dark

export BROWSER="zen-browser"
export MOZ_ENABLE_WAYLAND=1
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="alacritty"
export READER="zathura"
export SYSTEMD_COLORS="true"
export SYSTEMD_PAGERSECURE="true"
export SYSTEMD_EDITOR="nvim"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export DOTFILES="$HOME/dotfiles"
export HISTSIZE=0
export SAVEHIST=0
export DISABLE_AUTO_TITLE=true
export WORDCHARS=""
export ZSH_HIGHLIGHT_MAXLENGTH=100
export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
export ZSH_AUTOSUGGEST_STRATEGY=(atuin_top completion)

export CARGO_HOME="$XDG_CONFIG_HOME/cargo"
export DOTNET_ROOT="$XDG_CONFIG_HOME/dotnet"
export NUGET_PACKAGES="$XDG_CONFIG_HOME/nuget"
export DOTNET_CLI_HOME="$XDG_CONFIG_HOME/dotnet"
export OPAMROOT="$XDG_CONFIG_HOME/opam"
export HEX_HOME="$XDG_CONFIG_HOME/hex"
export MIX_HOME="$XDG_CONFIG_HOME/mix"
export GOPATH="$XDG_CONFIG_HOME/go"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export GEM_HOME="$HOME/.local/share/gem/ruby/3.3.0"

export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--color=fg:#d0d0d0,hl:#5f87af --color=fg+:#d0d0d0,bg+:#262626,hl+:#5fd7ff --color=info:#afaf87,prompt:#d7005f,pointer:#af5fff --color=marker:#87ff00,spinner:#af5fff,header:#87afaf'
export KB="${XDG_CONFIG_HOME:-$HOME/.config}/.kube"
export KUBECONFIG=$(find $KB -name "*.yaml" 2>/dev/null | tr '\n' ':' | sed 's/:$//')
export KUBECACHEDIR=$XDG_CACHE_HOME/kube
export KUBECOLOR_CONFIG="$DOTFILES/kubecolor/color.yaml"
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/podman/podman.sock
export DOCKER_SOCK=$XDG_RUNTIME_DIR/podman/podman.sock
export _Z_DATA=$XDG_CONFIG_HOME/z/z
export CLICOLOR=1
export LESS="-R"

typeset -U path
path=(
    "$HOME/.local/bin"
    "/usr/local/sbin"
    "/usr/local/bin"
    "/usr/sbin"
    "/usr/bin"
    "$XDG_CONFIG_HOME/go/bin"
    "$XDG_CONFIG_HOME/cargo/bin"
    "$DOTFILES/scripts"
    "$HOME/.local/share/pnpm"
    "$GEM_HOME/bin"
    $path
)
export PATH
