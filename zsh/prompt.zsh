autoload -Uz vcs_info colors && colors
setopt PROMPT_SUBST
precmd() {
  vcs_info
}
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' formats "%{${fg[yellow]}%} on %b%{${fg[red]}%}%u%{${fg[green]}%}%s%{${reset_color}%}"
zstyle ':vcs_info:git:*' stagedstr ' ● '
zstyle ':vcs_info:git:*' unstagedstr ' ✚ '
PROMPT=$'%{${fg[cyan]}%}%d%{${reset_color}%}${vcs_info_msg_0_}\n%{${fg[green]}%}❯%{${reset_color}%} '
