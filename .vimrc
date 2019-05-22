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

set nocompatible                       " dont care about vi
set mouse=a                            " enable mouse support
set backspace=indent,eol,start         " normal backspace behavior
"set t_Co=256                           " ensure 256 colors
set spelllang=en_us                    " english language spelling
set noswapfile                         " more trouble than they are worth
set hidden                             " allow unsaved buffers in background
set laststatus=2                       " show the status line
set nowrap                             " dont wrap long lines
set hlsearch                           " highlight search matches
set clipboard=unnamed                  " copy from vim to your mac pasteboard
"set number                            " no line numbers, statusbar is enough
set wildmode=longest,list,full         " full list menu for tab completion asdfa
"set background=light


"
" WHITESPACE & SPECIAL CHARACTERS
" -------------------------------
" What do to with special characters
"
set tabstop=2 shiftwidth=2 expandtab   " tabs to spaces
set smarttab smartindent autoindent    " automigical indenting

set listchars=tab:▸\ ,eol:\            " show special characters
" set fillchars=fold:\                   " fill the foldline with whitespace

"
" TOGGLE STATUS
" -------------
"
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

nnoremap <S-h> :call ToggleHiddenAll()<CR>

call ToggleHiddenAll()

"
" PASTE
" -----
" Fixes issue where paste conflicts with auto indent
"
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

if !&readonly && &modifiable
  set fileencoding=utf-8
endif

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
noremap ; :                            " One less key
map <c-f> :Grepper<CR>                 " Ctrl+f to search
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
Plugin 'tpope/vim-commentary'
Bundle 'wavded/vim-stylus'
Bundle 'gorodinskiy/vim-coloresque.git'

"
" RETIRED PLUGINS AND BUNDLES
" ---------------------------
" Stuff I've tried but don't really need.
"

"Plugin 'wincent/command-t'
"Plugin 'dart-lang/dart-vim-plugin'
"Bundle 'digitaltoad/vim-pug'
"Bundle 'keith/swift.vim'
"Plugin 'pangloss/vim-javascript'
"Plugin 'bling/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'troydm/easytree.vim'
"Plugin 'fatih/vim-go'
"Plugin 'junegunn/fzf.vim'
"Plugin 'troydm/easytree.vim'
"Plugin 'majutsushi/tagbar'
"Plugin 'ternjs/tern_for_vim'
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
" Airline et al. are too noisy for me, here's my take,
" commented out the branch since i have that in my tmux bar.
"
let &stl="%.50F"
let &stl.="%=%1*%{&modified ? ' + ' : ''}%0* "
let &stl.="%l:%c/%L "
"let &stl.="│ %{gitbranch#name()} "

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
" BUFFERS
" -------
"
"map <c-w> :CommandTBuffer<CR>
"map <c-c> :CommandTBuffer<CR>
map <Leader>w :bd<CR>                  " Close the curent buffer

"
" NERDTREE
" --------
"
map <Leader>d :NERDTreeToggle<CR>      " Open and close
map <Tab> :NERDTreeToggle<CR>          " Tab to navigate windows
let g:NERDTreeUpdateOnWrite = 1        " Update NERDTree on any saves
autocmd vimenter * NERDTree            " Open NERDTree right away
let NERDTreeMinimalUI = 1              " But with as few features as possible
"let NERDTreeQuitOnOpen=1              " Quit after opening a file
let g:NERDTreeHighlightCursorline = 0  " Makes nerdtree way faster

"autocmd FileType nerdtree setlocal nocursorline

" ignore node_modules (except src/node_modules)
let NERDTreeIgnore = ['\/((?!src).)*\/node_modules$[[dir]]'] 

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

""
"" Git Gutter
""
highlight link GitGutterAdd DiffAdd
highlight link GitGutterDelete DiffDelete
highlight link GitGutterChange DiffChange

let g:NERDTreeGitStatusWithFlags = 0
let g:NERDTreeGitStatusNodeColorization = 1

let g:NERDTreeDirArrowExpandable = nr2char(8200)
let g:NERDTreeDirArrowCollapsible = nr2char(8200)

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

" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

"
" COLORS & SYNTAX
" ---------------
"
syntax on                              " Syntax highlighting please

match ErrorMsg '\%>80v.\+'
" set synmaxcol=80
let &colorcolumn=join(range(81,280),",")
" let &colorcolumn="80,".join(range(128,999),",") " Advise where to stop

if !empty($VIM_COLOR)
    colorscheme $VIM_COLOR
else
    colorscheme white
endif

"
" JAVASCRIPT
" ----------
"
" let g:ale_fixers = {'javascript': ['standard']}

let g:ale_fix_on_save = 1
let g:ale_open_list = 1
let g:ale_lint_delay = 1500
let g:ale_clangtidy_options = "-fcoroutines-ts"
let g:ale_linters = {
  \ 'javascript': ['standard'],
  \ 'c++': ['clangtidy'],
  \ 'stylus': ['stylint'],
  \ 'markdown': ['write-good'],
  \ 'swift': ['swiftlint', 'swiftformat'],
  \ 'pug': ['pug-lint']
  \}

let g:ale_sign_error = '┆' " '﯀'
let g:ale_sign_warning = '┆' " ''

let g:ale_cpp_clang_executable = 'clang++'
let g:ale_cpp_clang_options = '-std=c++2a -Wall -fcoroutines-ts'

set fcs=vert:│

"
" SCROLL
" ------
" Dont scroll past the bottom line
"
noremap <ScrollWheelUp> H5k
noremap <ScrollWheelDown> L5j
