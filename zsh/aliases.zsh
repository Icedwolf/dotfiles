alias vim="nvim"
alias change="vim $DOTFILES"
alias att="paru -Syyuu --noconfirm --noupgrademenu --removemake --skipreview --nouseask --failfast --norebuild --noredownload --cleanafter --sudoloop;git -C $DOTFILES submodule update --remote;cargo-install-update install-update --all;gem update;pipx upgrade-all;$HOME/.config/tmux/plugins/tpm/bin/update_plugins all;helm repo update; deploy_dot; notify-send att-done"
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
alias tf="tofu"
alias docker-compose="podman-compose"
alias cat="smart_cat"
alias evim="vim ~/.config/nvim"
alias ljunk="paru -Qtdq"
alias css="rm -rf $HOME/Pictures/Screenshots/*" #clear screenshot folder
alias s="exec sway"
alias c="clear"
alias cl="c;l"
alias essh="vim ~/.ssh/config"
alias ke="k8s_events"
alias wget="wget --hsts-file=$HOME/.config/wget-hsts"
alias docker="podman"
alias vault="$HOME/.local/obsidian/obsidian --enable-features=UseOzonePlatform --ozone-platform=wayland"
