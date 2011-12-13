
##
## environment variables
##
export PS1='\w$(__git_ps1 " (\033[1;30m%s\033[0m)")>'
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

##
## aliased commands
##
alias ls="ls -paolgG"

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

