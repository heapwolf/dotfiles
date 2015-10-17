"
" VIM SETTINGS
" ------------
"
set shell=/bin/bash
set listchars=tab:▸\ ,eol:\ 
set list
set number
set go-=T
set hidden
set mouse=a
set spelllang=en_us
set tabstop=2 shiftwidth=2 expandtab
set smarttab
set autoindent
set t_Co=256
set fillchars+=vert:╎
set backupdir=$TEMP,$TMP,.
set laststatus=2
set backspace=2 " make backspace work like most other apps
set nocompatible " be iMproved, required

"
" ALTERNATIVE KEYS
" ----------------
"
map <Leader>d :EasyTreeToggle<CR>
map <Leader>f :TagbarToggle<CR>
map <C-c> :Buffers<CR>
map <C-f> :Lines<CR>
map <Tab> <C-W>

" common typos
:command WQ wq
:command Wq wq
:command W w
:command Q q
:command Qa Q

"
" CUSTOM FUNCTIONS
" ----------------
"

" Find all my TODO's
function! s:line_handler(l)
  let keys = split(a:l, ':')
  let n = bufnr('%')
  exec 'buf '.n
  exec keys[0]
  normal! ^zz
endfunction

command! Todo call fzf#run({
  \ 'source': 'cat '.expand("%:p").' | grep -n "TODO"',
  \ 'down': '25%',
  \ 'options': '--extended --nth=3..',
  \ 'sink': function('<sid>line_handler')
  \})

" Most Recently used
command! Open call fzf#run({
  \  'source':  v:oldfiles,
  \  'sink':    'e',
  \  'options': '-m -x +s',
  \  'down':    '40%'})

"
" PLUGINS
" -------
"

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'fatih/vim-go'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'troydm/easytree.vim'
Plugin 'majutsushi/tagbar'
Plugin 'junegunn/fzf.vim'
Plugin 'marijnh/tern_for_vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'digitaltoad/vim-jade'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'wavded/vim-stylus'

call vundle#end()

" Plug
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'https://github.com/scrooloose/syntastic.git'
call plug#end()

"
" OTHER SETTINGS
" --------------
"
colors custom
syntax on
highlight clear SignColumn

autocmd BufNewFile,BufRead *.json set ft=javascript

filetype off                  " required
filetype plugin indent on    " required

let g:easytree_show_hidden_files=1

highlight NonText ctermfg=bg guifg=bg
let g:gitgutter_max_signs=10000


"
" COMPLETION
" ----------
" https://valloric.github.io/YouCompleteMe/
"
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
autocmd FileType javascript setlocal omnifunc=tern#Complete
set completeopt-=preview

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
set dir=~/.vimswap//,/var/tmp//,/tmp//,.

"
" SYNTAX
" ------
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'

" Javascript
let g:syntastic_javascript_checkers = ['standard']
