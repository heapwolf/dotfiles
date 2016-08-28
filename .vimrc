set listchars=tab:▸\ ,eol:\ 
set fillchars=fold:\ 
set go-=T
set hidden
set nowrap
set spelllang=en_us
set tabstop=2 shiftwidth=2 expandtab
set smarttab
set autoindent
set autoread
set number                       " show line numbers
set mouse=a                      " enable mouse support
set backspace=indent,eol,start   " regular backspace behavior
set hlsearch                     " highlight search matches
set t_Co=256                     " ensure 256 colors
set laststatus=2                 " show the status line
set foldmethod=indent            " fold based on indent
set foldnestmax=2                " deepest fold is 10 levels
set nofoldenable                 " dont fold by default
set foldlevel=1                  " this is just what i use
set noswapfile                   " more trouble than they are worth

set foldtext=SimpleFold()
function SimpleFold()
  return ''
endfunction

"
" ALTERNATIVE KEYS
" ----------------
"

map <Tab> <C-W>

" common typos
:command WQ wq
:command Wq wq
:command W w
:command Qa qall!
:command Q qall!

"
" PLUGINS
" -------
"

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

"
" macOS
"
Plugin 'gmarik/Vundle.vim'
"Plugin 'bling/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree.git'
"Plugin 'pangloss/vim-javascript'
Plugin 'ryanoasis/vim-devicons'
"Plugin 'troydm/easytree.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Bundle 'digitaltoad/vim-jade'
Bundle 'wavded/vim-stylus'
"Bundle 'edkolev/promptline.vim'
"Bundle 'kien/ctrlp.vim'

"Bundle 'edkolev/tmuxline.vim'

"Plugin 'fatih/vim-go'
"Plugin 'junegunn/fzf.vim'

"Plugin 'rust-lang/rust.vim'
"Plugin 'ervandew/supertab'
"Plugin 'rking/ag.vim'

"Bundle 'marijnh/tern_for_vim'
"Bundle 'mattn/webapi-vim'
"Bundle 'mattn/gist-vim'
"Plugin 'troydm/easytree.vim'
"Plugin 'majutsushi/tagbar'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'marijnh/tern_for_vim'
"Bundle 'terryma/vim-multiple-cursors'

call vundle#end()

"
" Plug
"
"call plug#begin('~/.vim/plugged')
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
"Plug 'junegunn/goyo.vim'
"Plug 'https://github.com/scrooloose/syntastic.git'
"call plug#end()


"
" Git
"
"highlight NonText ctermfg=120
let g:gitgutter_max_signs=10000
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

"
" Compltion
" https://valloric.github.io/YouCompleteMe/
"
"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
"let g:ycm_confirm_extra_conf = 0
"autocmd FileType javascript setlocal omnifunc=tern#Complete
"set completeopt-=preview
"nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
"set dir=~/.vimswap//,/var/tmp//,/tmp//,.

"
" Fonts
"
"let g:airline_powerline_fonts = 1

"
" Colors & Syntax
"
set background=dark
syntax on
colors custom

"highlight clear SignColumn
"let &colorcolumn="80,".join(range(128,999),",")
"set synmaxcol=128

"
" Airline (slow as fuck)
"
"let g:airline_theme = 'solarized'
"let g:airline_theme = 'custom'
"let g:airline_theme = 'papercolor'
"let g:airline#extensions#tabline#enabled = 0
"let g:airline_powerline_fonts = 1

"
" Standard Javascript
"
"let g:syntastic_javascript_checkers = ['standard']
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"
" JSON
"
autocmd BufNewFile,BufRead *.json set ft=javascript
filetype plugin indent on    " required

"
" Nerdtree
"
map <Leader>d :NERDTreeToggle<CR>
let g:NERDTreeUpdateOnWrite = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
"let g:NERDTreeWinPos = 'right'
let NERDTreeQuitOnOpen=1

hi def link NERDTreeGitStatusModified 39
hi def link NERDTreeGitStatusStaged 39
hi def link NERDTreeGitStatusRenamed 39
hi def link NERDTreeGitStatusUnmerged 39
hi def link NERDTreeGitStatusUntracked 39
hi def link NERDTreeGitStatusDirDirty 39
hi def link NERDTreeGitStatusDirClean 39

