export ZSH_HIGHLIGHT_MAXLENGTH=100
export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
export ZSH_AUTOSUGGEST_STRATEGY=(atuin_top completion)
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--color=fg:#d0d0d0,hl:#5f87af --color=fg+:#d0d0d0,bg+:#262626,hl+:#5fd7ff --color=info:#afaf87,prompt:#d7005f,pointer:#af5fff --color=marker:#87ff00,spinner:#af5fff,header:#87afaf'
export KB=$HOME/.kube
export KUBECONFIG=$KB/credinet_prod:$KB/cred-hml:$KB/rancher01:$KB/rancher01-hml01:$KB/rancher-ggdc:$KB/minikube
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/podman/podman.sock
export DOCKER_SOCK=$XDG_RUNTIME_DIR/podman/podman.sock
export MINIKUBE_HOME=$XDG_CONFIG_HOME
