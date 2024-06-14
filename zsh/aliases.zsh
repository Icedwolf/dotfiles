alias vim="nvim"
alias att="paru -Syyuu --noconfirm --noupgrademenu --removemake --skipreview --nouseask --failfast --norebuild --noredownload --cleanafter --sudoloop;git -C $DOTFILES submodule update --remote;cargo-install-update install-update --all;gem update;pipx upgrade-all;$HOME/.config/tmux/plugins/tpm/bin/update_plugins all;helm repo update; deploy_dot; notify-send att-done"
alias update="source $ZDOTDIR/.zshrc"
alias lcontext="kubectl config get-contexts"
alias ucontext="kubectl config use-context"
alias l="exa -blnar -s mod --icons"
alias ls="exa --icons"
alias cleancache="rm -rf ~/.cache"
alias kubectl="kubecolor"
alias k="kubectl"
alias clima="curl wttr.in/Blumenau"
alias docker-compose="podman-compose"
alias cat="smart_cat"
alias ljunk="paru -Qtdq"
alias css="rm -rf $HOME/Pictures/Screenshots/*" #clear screenshot folder
alias s="exec sway"
alias c="clear"
alias cl="c;l"
alias essh="vim ~/.ssh/config"
alias ke="k8s_events"
alias wget="wget --hsts-file=$HOME/.config/wget-hsts"
alias docker="podman"
alias cd="z"
