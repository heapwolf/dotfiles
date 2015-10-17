function prompt_command {
  export PS1=$(~/.bash_prompt)
}

export PROMPT_COMMAND=prompt_command
export LSCOLORS=ExFxBxDxCxegedabagacad
export HISTCONTROL=ignoreboth:erasedups
export HISTFILESIZE=10000

export FZF_DEFAULT_OPTS='
 --extended
 --bind ctrl-f:page-down,ctrl-b:page-up
 --color fg:250,bg:235,hl:254,fg+:255,bg+:235,hl+:191,prompt:153,info:240,spinner:240
'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias ll="ls -GFla"
alias ls="ls -GF1"
alias la="ll"
alias ..="cd .."
alias cd..=".."
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

function x () {
  local dir
  dir=$(ls -R | grep '[a-zA-Z0-9]:' | sed 's/://g' | fzf +m) &&
  cd "$dir"
}

function f () {
  find . -name '.git' -type d -prune -o -type f -print0 |\
  xargs -0 grep --color -n -H "$1" |\
  awk '{split($0,a,":"); printf("\033[1;33m%s\033[m: %s\n\033[1;31m%s\033[m\n\n", a[2], a[1], a[3]) }' |\
  less -R
}
