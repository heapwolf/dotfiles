
common=(
  vim # editor
  cmake # x-platform make
  jq # a bad-ass json tool
  tig # a tui for git
  htop # a better top
  python # a snek 
  pv # progress bars
  tree # visual directories
  zsh # slightly better bash
  zsh-completions # less typing
)

if [ `uname` == 'Darwin' ]; then

  mac=(
    youtube-dl # get songs before they vanish
  )

  args=("${common[@]}" "${mac}")
  brew install ${args[@]}

else

  linux=(
    tmux # terminal multiplexing
    lnav # log navigation
    build-essential # c/c++, make, etc
    clang-3.8 # better compiling
    lldb-3.8 # better debugging
  )

  args=("${common[@]}" "${linux}")

  sudo apt-get update
  sudo apt-get install ${args[@]}

  # tmux themse so we know what machine we are on
  git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack

fi

# clone the dot files into the home directory
git clone https://github.com/0x00a/dotfiles.git ~

