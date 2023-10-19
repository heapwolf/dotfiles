
common=(
  vim # editor
  cmake # x-platform make
  tmux # terminal multiplexer
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
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew tap mattmezza/mannaggia
  mac=(
    youtube-dl # get songs before they vanishi
    macvim --override-system-vim
    mannaggia
  )

  args=("${common[@]}" "${mac[@]}")
  brew install ${args[@]}

  echo "function gi() { curl -L -s https://www.gitignore.io/api/\$@ ;}" >> ~/.zshrc && source ~/.zshrc
  
else

  linux=(
    lnav # log navigation
    build-essential # c/c++, make, etc
    clang-3.8 # better compiling
    lldb-3.8 # better debugging
  )

  args=("${common[@]}" "${linux[@]}")

  sudo apt-get update
  sudo apt-get install ${args[@]}

  # tmux themse so we know what machine we are on
  git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack

fi

curl -o /usr/local/bin/mit https://raw.githubusercontent.com/mattmezza/mit-license-generator/master/mit && chmod a+x /usr/local/bin/mit

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# clone the dot files into the home directory
git clone https://github.com/mattmezza/dotfiles.git ~/dotfiles

vim +PluginInstall +qall

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
source ~/.bashrc
nvm install node