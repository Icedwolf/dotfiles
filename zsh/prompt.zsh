autoload -Uz vcs_info
setopt PROMPT_SUBST

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' check-for-staged-changes true
zstyle ':vcs_info:*' check-for-untracked true
zstyle ':vcs_info:git*' formats "on %F{yellow}%b%f%F{red}%u%F{green}%c%f"
zstyle ':vcs_info:git*' actionformats "on %F{yellow}%b%f %F{red}| %a%f"
zstyle ':vcs_info:git*' stagedstr ' ● '
zstyle ':vcs_info:git*' unstagedstr ' ✚ '

check_upstream() {
    if git rev-parse --abbrev-ref @{u} >/dev/null 2>&1; then
        local git_status=$(git rev-list --left-right --count @{u}...HEAD 2>/dev/null)
        local behind_count=$(echo "$git_status" | awk '{print $1}')
        local ahead_count=$(echo "$git_status" | awk '{print $2}')

        local -a stats
        [[ $behind_count -gt 0 ]] && stats+=( "↓$behind_count" )
        [[ $ahead_count -gt 0 ]] && stats+=( "↑$ahead_count" )
        if [[ ${#stats} -gt 0 ]]; then
            echo "%F{magenta} ${(j: :)stats}%f"
        fi
    fi
}

precmd() {
    vcs_info
    if [[ -n "$vcs_info_msg_0_" ]]; then
        vcs_info_msg_0_="${vcs_info_msg_0_}$(check_upstream)"
    fi
}

zstyle ':vcs_info:git*' formats "on %F{11}%b%f%F{9}%u%F{10}%c%f"
PROMPT=$'%(!.%F{9}%n%f.%F{10}%n%f)@%F{12}%m%f %F{14}%d%f ${vcs_info_msg_0_} \n%F{10}❯%f '
