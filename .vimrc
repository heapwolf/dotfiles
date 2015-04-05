set shell=/bin/bash
set listchars=tab:▸\ ,eol:¬
set list
set number
set go-=T
set hidden
set mouse=a
set spelllang=en_us
syntax on

set tabstop=2 shiftwidth=2 expandtab

set smarttab
set autoindent

set t_Co=256
colors custom

set fillchars+=vert:╎
set backupdir=$TEMP,$TMP,.

set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'

highlight clear SignColumn

map <Leader>d :call ToggleVExplorer()<CR>
map <Leader>/ :Ag<SPACE>
"nmap <Leader>s :set spell!<CR>

autocmd BufNewFile,BufRead *.json set ft=javascript

set nocompatible              " be iMproved, required
filetype off                  " required

" 
" set the runtime path to include Vundle and initialize
"
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'digitaltoad/vim-jade'
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

call vundle#end()
filetype plugin indent on    " required

"
" Explorer
"
highlight NonText ctermfg=bg guifg=bg
let g:netrw_banner = 0 " don't show the help banner
let g:netrw_liststyle = 3 " show as a tree
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:gitgutter_max_signs = 10000

function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction

" 
" Silver Searcher
"
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

set backspace=2 " make backspace work like most other apps

"
" Stuff for YouCompleteMe
" https://valloric.github.io/YouCompleteMe/
"
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
autocmd FileType javascript setlocal omnifunc=tern#Complete
set completeopt-=preview

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"
" common typos
"
:command WQ wq
:command Wq wq
:command W w
:command Q q

