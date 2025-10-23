skip_global_compinit=1

export PROTON_ENABLE_WAYLAND=1
export PROTON_NO_WM_DECORATION=1
export PROTON_ENABLE_HDR=1
export PROTON_DLSS_UPGRADE=1
export PROTON_DLSS_INDICATOR=1
export PROTON_NVIDIA_LIBS=1
export PROTON_USE_NTSYNC=1
export PROTON_LOCAL_SHADER_CACHE=0
export PROTON_ENABLE_MEDIACONV=1

export __GLX_VENDOR_LIBRARY_NAME=nvidia
export __NV_PRIME_RENDER_OFFLOAD=1
export __NV_PRIME_RENDER_OFFLOAD_PROVIDER=NVIDIA-G0
export __VK_LAYER_NV_optimus=NVIDIA_only
export LIBVA_DRIVER_NAME=nvidia export WLR_NO_HARDWARE_CURSORS=1
export GBM_BACKEND=nvidia-drm
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0

export XDG_SESSION_TYPE="wayland"
export XDG_CURRENT_DESKTOP="sway"
export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:-/run/user/$(id -u)}
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export GTK_THEME=Adwaita:dark

export LESSKEYIN="$XDG_CONFIG_HOME/less/lesskey"
export LESS="-R"

export MOZ_ENABLE_WAYLAND=1
export BROWSER="waterfox"
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="st"
export READER="zathura"
export SYSTEMD_COLORS="true"
export SYSTEMD_PAGERSECURE="false"
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
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE="20"
export ZSH_AUTOSUGGEST_USE_ASYNC="true"

export CARGO_HOME="$XDG_CONFIG_HOME/cargo"
export RUSTUP_HOME="$XDG_CONFIG_HOME/rustup"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export GEM_HOME="$HOME/.local/share/gem/ruby/3.3.0"

export BEMENU_OPTS="--fn 'CaskaydiaCove Nerd Font 10'"
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--color=fg:#d0d0d0,hl:#5f87af --color=fg+:#d0d0d0,bg+:#262626,hl+:#5fd7ff --color=info:#afaf87,prompt:#d7005f,pointer:#af5fff --color=marker:#87ff00,spinner:#af5fff,header:#87afaf'
export KB="${XDG_CONFIG_HOME:-$HOME/.config}/.kube"
export KUBECACHEDIR=$XDG_CACHE_HOME/kube
export KUBECOLOR_CONFIG="$DOTFILES/kubecolor/color.yaml"
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/podman/podman.sock
export DOCKER_SOCK=$XDG_RUNTIME_DIR/podman/podman.sock
export _Z_DATA=$XDG_CONFIG_HOME/z/z
export CLICOLOR=1
