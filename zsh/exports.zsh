export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export KB=$HOME/.kube
export KUBECONFIG=$KB/credinet_prod:$KB/cred-hml:$KB/rancher01:$KB/rancher01-hml:$KB/rancher-ggdc:$KB/k3d
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/podman/podman.sock
export DOCKER_SOCK=$XDG_RUNTIME_DIR/podman/podman.sock
export MINIKUBE_HOME=$XDG_CONFIG_HOME
