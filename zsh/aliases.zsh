#!/bin/zsh
alias change="lvim $DOTFILES"
alias att="paru -Syyuu --skipreview --nouseask --failfast --norebuild --noredownload --cleanafter --sudoloop;git -C $DOTFILES submodule update --remote;cargo-install-update install-update --all;gem update; lvim +LvimUpdate +q; notify-send att-done"
alias update="source $ZDOTDIR/.zshrc"
alias kbconf="lvim ~/.kube/config"
alias lcontext="kubectl config get-contexts"
alias ucontext="kubectl config use-context"
alias l="exa -blnar -s mod --icons"
alias ls="exa --icons"
alias vim="lvim"
alias nvim="lvim"
alias cleancache="rm -rf ~/.cache"
alias dotfiles="lvim $DOTFILES"
alias k="kubectl"
alias clima="curl wttr.in/Blumenau"
alias config="lvim /home/icedwolf/.config"
alias tf="terraform"
alias docker-compose="podman-compose"
alias cat="smart_cat"
alias spotify="ncspot"
alias kube_create="systemctl --user start podman.socket;k3d cluster create --servers 3 --k3s-arg '--kubelet-arg=feature-gates=KubeletInUserNamespace=true@server:*';k3d kubeconfig get k3s-default > ~/.kube/k3d;notify-send 'Cluster criado e kubeconfig setado'"
