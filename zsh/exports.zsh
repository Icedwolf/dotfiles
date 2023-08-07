export _Z_DATA="$DOTFILES/z/z.data"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export KB=$HOME/.kube
export KUBECONFIG=$KB/credinet_prod:$KB/dev:$KB/local:$KB/cred-hml:$KB/rancher01:$KB/rancher01-hml:$KB/rancher-ggdc:$KB/k3d
export BROWSER="firefox"
export EDITOR="lvim"
export TERMINAL="alacritty"
export READER="zathura"
export PAGER="less"
export LESS="--RAW-CONTROL-CHARS"
export PATH=$HOME/bin/ctags/:$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$HOME/.fzf/bin:~/go/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.cargo/bin:$HOME/.local/share/gem/ruby/3.0.0/bin:$HOME/scripts/:$DOTFILES/scripts
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/podman/podman.sock
export DOCKER_SOCK=$XDG_RUNTIME_DIR/podman/podman.sock