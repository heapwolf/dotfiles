export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH
export ZSH=/Users/paolofragomeni/.oh-my-zsh
export TERM='xterm-256color'

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# PROMPT
export PS1="%{$fg[blue]%}▎%{$reset_color%}"

# FIX NPM
export PATH=~/.npm-global/bin:$PATH

# FIX TILDE
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000064,"HIDKeyboardModifierMappingDst":0x700000035},{"HIDKeyboardModifierMappingSrc":0x700000035,"HIDKeyboardModifierMappingDst":0x700000064}]}' > /dev/null 2>&1

# UP DOWN NET
alias fixnet="sudo ifconfig en0 down; sudo ifconfig en0 up"

