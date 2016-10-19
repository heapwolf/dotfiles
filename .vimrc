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
"set number                      " dont show line numbers, we have status!
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
" STATUS LINE
" -----------
"
set statusline=[%.50F]\      " limit the full path and enclose it
set statusline+=%=%1*%m%0*\  " indicate if the file has been modified
set statusline+=%c:%l/%L     " column:line/total lines

"
" PASTE
" -----
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
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree.git'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/syntastic'
Plugin 'elzr/vim-json'

Bundle 'digitaltoad/vim-jade'
Bundle 'wavded/vim-stylus'
Bundle 'kien/ctrlp.vim'

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
Plugin 'ervandew/supertab'
"Plugin 'rking/ag.vim'

"Bundle 'edkolev/promptline.vim'
"Bundle 'edkolev/tmuxline.vim'
"Bundle 'marijnh/tern_for_vim'
"Bundle 'mattn/webapi-vim'
"Bundle 'mattn/gist-vim'
"Bundle 'terryma/vim-multiple-cursors'

call vundle#end()

"
" Search
"
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:ackprg = 'ag --nogroup --nocolor --column'
cabbrev s Ack

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
let g:gitgutter_sign_added = '│'
let g:gitgutter_sign_modified = '│'
let g:gitgutter_sign_removed = '│'
let g:gitgutter_sign_removed_first_line = '│'
let g:gitgutter_sign_modified_removed = '│'
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

highlight clear SignColumn
let &colorcolumn="80,".join(range(128,999),",")
set synmaxcol=128

"
" Promptline generator
"
"let g:promptline_preset = {
"  \'b' : [ promptline#slices#cwd() ],
"  \'c' : [ promptline#slices#vcs_branch(), promptline#slices#jobs() ],
"  \'warn' : [ promptline#slices#last_exit_code(), promptline#slices#battery() ]}

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
let g:syntastic_javascript_checkers = ['standard']
autocmd bufwritepost *.js silent !standard --fix index.js % &>/dev/null
set autoread
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"
" JSON
"
"autocmd BufNewFile,BufRead *.json set ft=javascript
"filetype plugin indent on    " required
let g:vim_json_syntax_conceal = 0

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

"
" Ctrlp
"
map <c-l> <Esc>:CtrlPBuffer<CR>
map <c-f> :Ack 
