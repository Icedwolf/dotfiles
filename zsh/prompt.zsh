autoload -Uz vcs_info
setopt PROMPT_SUBST

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' check-for-staged-changes true
zstyle ':vcs_info:*' check-for-untracked true
zstyle ':vcs_info:git:*' formats "on %F{yellow}%b%f%F{red}%u%F{green}%c%f"
zstyle ':vcs_info:git:*' actionformats "on %F{yellow}%b%f %F{red}| %a%f"
zstyle ':vcs_info:git:*' stagedstr ' ●'
zstyle ':vcs_info:git:*' unstagedstr ' ✚'

precmd() {
    vcs_info
}

PROMPT=$'%(!.%F{red}%n%f.%F{green}%n%f)@%F{blue}%m%f %F{cyan}%d%f ${vcs_info_msg_0_} \n%F{green}❯%f '
