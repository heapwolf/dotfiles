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
set nowrap
set mouse=a
set spelllang=en_us
set tabstop=2 shiftwidth=2 expandtab
set smarttab
set autoindent
set hlsearch
set autoread
set t_Co=256
"set fillchars+=vert:╎
"set nocompatible " be iMproved, required
set laststatus=2
set backspace=2 " make backspace work like most other apps
"let loaded_matchparen = 1
"au FocusGained * :redraw!

"set textwidth=80
"set colorcolumn=+1
let &colorcolumn=join(range(81,999),",")

"
" COMMENTS
" --------
"
let s:comment_map = {
  \   "c": '\/\/ ',
  \   "cpp": '\/\/ ',
  \   "cxx": '\/\/ ',
  \   "h": '\/\/ ',
  \   "hxx": '\/\/ ',
  \   "go": '\/\/ ',
  \   "javascript": '\/\/ ',
  \   "python": '# ',
  \   "vim": '" ',
  \ }

function! ToggleComment()
  if has_key(s:comment_map, &filetype)
    let comment_leader = s:comment_map[&filetype]
    if getline('.') =~ "^" . comment_leader
      " Uncomment the line
      execute "silent s/^" . comment_leader . "//"
    else
      " Comment the line
      execute "silent s/^/" . comment_leader . "/"
    endif
  else
    echo "No comment leader found for filetype"
  end
endfunction

nnoremap <leader>! :%!fold -w 80<cr>

nnoremap <leader><Space> :call ToggleComment()<cr>
vnoremap <leader><Space> :call ToggleComment()<cr>

function! s:line_handler(l)
  let keys = split(a:l, ':\t')
  exec 'buf' keys[0]
  exec keys[1]
  normal! ^zz
endfunction

function! s:buffer_lines()
  let res = []
  for b in filter(range(1, bufnr('$')), 'buflisted(v:val)')
    call extend(res, map(getbufline(b,0,"$"), 'b . ":\t" . (v:key + 1) . ":\t" . v:val '))
  endfor
  return res
endfunction

command! Search call fzf#run({
\   'source':  <sid>buffer_lines(),
\   'sink':    function('<sid>line_handler'),
\   'options': '--extended --nth=3..',
\   'down':    '60%'
\})

"
" BACKUPS
" -------
"
set noswapfile
"set backupdir=~/tmp//
"set directory=~/tmp//
"set undodir=~/tmp//

"
" ALTERNATIVE KEYS
" ----------------
"
map <Leader>d :EasyTreeToggle<CR>
"map <Leader>f :TagbarToggle<CR>
map <C-c> :Buffers<CR>
map <C-f> :Lines<CR>
map <C-o> :Open<CR>

map <Tab> <C-W>

" common typos
:command WQ wq
:command Wq wq
:command W w
:command Qa qall!
:command Q qall!

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
Plugin 'airblade/vim-gitgutter'
Plugin 'troydm/easytree.vim'
Plugin 'junegunn/fzf.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'wavded/vim-stylus'
Plugin 'rust-lang/rust.vim'
Bundle 'edkolev/tmuxline.vim'
Plugin 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
"Bundle 'mattn/webapi-vim'
"Bundle 'mattn/gist-vim'
"Plugin 'majutsushi/tagbar'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'marijnh/tern_for_vim'
"Bundle 'terryma/vim-multiple-cursors'

call vundle#end()

" Plug
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
"Plug 'junegunn/goyo.vim'
"Plug 'https://github.com/scrooloose/syntastic.git'
call plug#end()

"
" OTHER SETTINGS
" --------------
"
colors custom
syntax on
highlight clear SignColumn

autocmd BufNewFile,BufRead *.json set ft=javascript

"filetype off                  " required
filetype plugin indent on    " required

let g:easytree_show_hidden_files=1

highlight NonText ctermfg=bg guifg=bg
let g:gitgutter_max_signs=10000

"
" RUST
" ----
"
"let g:rustfmt_autosave = 1

"
" COMPLETION
" ----------
" https://valloric.github.io/YouCompleteMe/
"
"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
"let g:ycm_confirm_extra_conf = 0
"autocmd FileType javascript setlocal omnifunc=tern#Complete
"set completeopt-=preview

"nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
"set dir=~/.vimswap//,/var/tmp//,/tmp//,.

"
" SYNTAX
" ------
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

let g:airline_theme = 'bubblegum'
let g:airline_powerline_fonts = 1

" Javascript
"let g:syntastic_javascript_checkers = ['standard']

