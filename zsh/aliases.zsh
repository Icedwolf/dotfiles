#!/bin/zsh
alias vim="nvim"
alias change="vim $DOTFILES"
alias att="paru -Syyuu --noconfirm --noupgrademenu --removemake --skipreview --nouseask --failfast --norebuild --noredownload --cleanafter --sudoloop;git -C $DOTFILES submodule update --remote;cargo-install-update install-update --all;gem update;pipx upgrade-all;$HOME/.config/tmux/plugins/tpm/bin/update_plugins all;notify-send att-done"
alias update="source $ZDOTDIR/.zshrc"
alias kbconf="vim ~/.kube/config"
alias lcontext="kubectl config get-contexts"
alias ucontext="kubectl config use-context"
alias l="exa -blnar -s mod --icons"
alias ls="exa --icons"
alias cleancache="rm -rf ~/.cache"
alias k="kubectl"
alias clima="curl wttr.in/Blumenau"
alias config="vim /home/icedwolf/.config"
alias tf="terraform"
alias docker-compose="podman-compose"
alias cat="smart_cat"
alias spotify="ncspot"
alias kube_create="systemctl --user start podman.socket;k3d cluster create --servers 3 --k3s-arg '--kubelet-arg=feature-gates=KubeletInUserNamespace=true@server:*';k3d kubeconfig get k3s-default > ~/.kube/k3d;notify-send 'Cluster criado e kubeconfig setado'"
alias evim="vim ~/.config/nvim"
alias ljunk="paru -Qtdq"
alias css="rm -rf $HOME/Pictures/Screenshots/*" #clear screenshot folder
alias s="exec sway"
alias c="clear"
alias essh="vim ~/.ssh/config"
alias ke="k8s_events"
