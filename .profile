
##
## environment variables
##
#export PS1='\w$(__git_ps1 " (\033[1;30m%s\033[0m)")>'
export PS1='\033[33m⚡\033[0m'
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/sbin:/Users/paolo/workroot/git/hij1nx/complete/example/:$PATH

##
## aliased commands
##
alias ls="ls -paolagG"
alias pp="pbpaste"
alias pc="pbcopy"
alias grep="grep --color=auto"
alias "cd.."="cd .."
alias cls="clear"

alias clock="tmux clock"
alias c="tmux show-buffer | pc"

##
## sourced files
##
source ~/.git-completion.sh


##
## custom functions
##

## get a random word from the system dictionary.
rword() { 
  resource=/usr/share/dict/words;
  lineNum=$(cat $resource | wc -l); 
  cat -n $resource | grep -w $(jot -r 1 1 $lineNum) | cut -f2;
}

## a git url shortener.
gurl() {
  if [ "$2" ]
  then
    url="url=$1 -F $2";
  else 
    url="url=$1";
  fi
  curl -i http://git.io -F $url
}

