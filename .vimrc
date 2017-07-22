
"               __  __
"   | / / /\ᐱ  /_/ /
" o |/ / /  / / \ /__
"

"
" GENERAL
" -------
"

set autoread                           " check for changes automatically
au CursorHold * checktime              " reload the changes once idle

set backspace=indent,eol,start         " normal backspace behavior
set t_Co=256                           " ensure 256 colors
set mouse=a                            " enable mouse support
set spelllang=en_us                    " english language spelling
set noswapfile                         " more trouble than they are worth
set hidden                             " allow unsaved buffers in background
set laststatus=2                       " show the status line
set nowrap                             " dont wrap long lines
set hlsearch                           " highlight search matches
set autoread                           " reload when background changes occur
"set clipboard=unnamed                 " copy from vim to your mac pasteboard
"set number                            " no line numbers, statusbar is enough

"
" WHITESPACE & SPECIAL CHARACTERS
" -------------------------------
" What do to with special characters
"
set tabstop=2 shiftwidth=2 expandtab   " tabs to spaces
set smarttab smartindent autoindent    " automigical indenting

set listchars=tab:▸\ ,eol:\            " show special characters
set fillchars=fold:\                   " fill the foldline with whitespace

"
" FOLDING BEHAVIOR
" ----------------
" Sometimes you need to hide some code
"
set foldmethod=indent                  " fold based on indent
set foldnestmax=2                      " deepest fold is 2 levels
set nofoldenable                       " dont fold by default
set foldlevel=1                        " this is just what i use

set foldtext=SimpleFold()
function SimpleFold()
  return '+'
endfunction

"
" PASTE
" -----
" Fixes issue where paste conflicts with auto indent
"
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

"
" ALTERNATIVE KEYS
" ----------------
" Common typos and improvements
"

map <c-l> <Esc>:CtrlPBuffer<CR>        " Ctrl+l to switch buffers
map <c-f> :Grepper<CR>                 " Ctrl+f to search
map <Tab> <C-W>w                       " Tab to navigate windows

" common typos
:command WQ wq
:command Wq wq
:command W w
:command Qa qall!
:command Q qall!


"
" PLUGINS
" -------
" Stuff that makes vim better
"
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree.git'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'w0rp/ale'
Plugin 'mhinz/vim-grepper'
Plugin 'itchyny/vim-gitbranch'

Bundle 'wavded/vim-stylus'
Bundle 'digitaltoad/vim-pug'

"
" RETIRED PLUGINS AND BUNDLES
" ---------------------------
" Stuff I've tried but don't really need.
"

"Plugin 'pangloss/vim-javascript'
"Plugin 'bling/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'troydm/easytree.vim'
"Plugin 'fatih/vim-go'
"Plugin 'junegunn/fzf.vim'
"Plugin 'troydm/easytree.vim'
"Plugin 'majutsushi/tagbar'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'marijnh/tern_for_vim'
"Plugin 'rust-lang/rust.vim'
"Plugin 'rking/ag.vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'elzr/vim-json'
"Plugin 'ervandew/supertab'
"Plugin 'ntpeters/vim-better-whitespace'
"Plugin 'yuttie/comfortable-motion.vim'
"Plugin 'dart-lang/dart-vim-plugin'

"Bundle 'kien/ctrlp.vim'
"Bundle '0x00a/vim-mineral'
"Bundle 'toyamarinyon/vim-swift'
"Bundle 'junegunn/limelight.vim'
"Bundle 'edkolev/promptline.vim'
"Bundle 'edkolev/tmuxline.vim'
"Bundle 'marijnh/tern_for_vim'
"Bundle 'mattn/webapi-vim'
"Bundle 'mattn/gist-vim'
"Bundle 'terryma/vim-multiple-cursors'

call vundle#end()

"
" STATUS LINE
" -----------
" Airline et al. are too noisy for me, here's my take
"
let &stl="%.50F"
let &stl.="%=%1*%{&modified ? ' + ' : ''}%0* "
let &stl.="%l:%c/%L "
let &stl.="│ %{gitbranch#name()} "

"
" SEARCH
" ------
"
let g:grepper = {
  \ 'tools': ['sift', 'git'],
  \ 'sift': {
  \   'grepprg':    'sift $* . --line-number',
  \   'grepformat': '%f:%l:%m'
  \ }}

"
" NERDTREE
" --------
"
map <Leader>d :NERDTreeToggle<CR>      " Open and close
let g:NERDTreeUpdateOnWrite = 1        " Update NERDTree on any saves
autocmd vimenter * NERDTree            " Open NERDTree right away
let NERDTreeMinimalUI = 1              " But with as few features as possible
"let NERDTreeQuitOnOpen=1              " Quit after opening a file
let g:NERDTreeHighlightCursorline = 0  " Makes nerdtree way faster

"autocmd FileType nerdtree setlocal nocursorline
let NERDTreeIgnore = ['\/((?!src).)*\/node_modules[[dir]]'] " ignore node_modules (except src/node_modules)

"
" GIT
" ---
" Various ways to indicate git status
"
let g:gitgutter_max_signs=10000
let g:gitgutter_sign_added = '│'
let g:gitgutter_sign_modified = '│'
let g:gitgutter_sign_removed = '│'
let g:gitgutter_sign_removed_first_line = '│'
let g:gitgutter_sign_modified_removed = '│'

let g:NERDTreeGitStatusWithFlags = 0
let g:NERDTreeGitStatusNodeColorization = 1

"
" ICONS
" -----
" This is how we get the fancy icons
"
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsUnicodeDecorateFileNodes = 0
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

"
" COLORS & SYNTAX
" ---------------
"
set background=dark                    " Set background
syntax on                              " Syntax highlighting please

if !empty($VIM_COLOR)
  colorscheme $VIM_COLOR
else
  colors transparent-gray                " A custom light theme
endif


"set synmaxcol=128                      " Stop highlighting at 128 columns
"let &colorcolumn="80,".join(range(128,999),",") " Advise where to stop

"
" JAVASCRIPT
" ----------
"
"autocmd bufwritepost *.js silent !standard --fix %
"set autoread

"let g:ale_fixers = {'javascript': ['standard']}
let g:ale_fix_on_save = 1
let g:ale_open_list = 1
let g:ale_lint_delay = 1500
let g:ale_linters = {
  \ 'javascript': ['standard'],
  \ 'stylus': ['stylint'],
  \ 'pug': ['pug-lint']
  \}

"let g:syntastic_javascript_checkers = ['standard']
"autocmd bufwritepost *.js silent !standard --fix index.js % &>/dev/null
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

set fcs=vert:│

"
" PERF
" ----
"
augroup vimrc
 autocmd!
 autocmd BufWinEnter,Syntax * syn sync minlines=500 maxlines=500
augroup END

set nocursorline
set nocursorcolumn
"set lazyredraw
