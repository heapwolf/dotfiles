set sw=2
set expandtab
set smarttab
set autoindent
set laststatus=2
set listchars=tab:▸\ ,eol:¬
set guifont=Monaco:h16
set list
set number
set go-=T
set hidden
set mouse=a
syntax on
 
map <Leader>d :NERDTreeToggle<CR>
nmap <Leader>s :set spell!<CR>
nmap <Leader>f :TagbarToggle<CR>

set spelllang=en_us " im a bad speller

set t_Co=256 " its a 256 color scheme
colorscheme crappo " my own theme

"
" Toggle paste mode. I decided against this,
" it messes up neocomplcache autocomplete.
"
"set paste
"noremap <Leader>p :set paste!<CR>

let NERDTreeMinimalUI=1 " get rid of help stuff
let NERDTreeShowHidden=1 " show me my gitignores!
let NERDTreeChDirMode=1 " please follow me where ever i go

"automatically open nerdtree and start mirroring the trees
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w

set fcs+=vert:│ " looks much better than the broken pipe
"⎹ " This is a unicode character set to the far right.

" // control c for copy to pbcopy
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>

set nocompatible 
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-fugitive'
Bundle 'Shougo/neocomplcache'
Bundle 'majutsushi/tagbar'
Bundle 'ervandew/supertab'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/nerdtree'
Bundle 'ins9tks/autocomplpop'

" // Format JSON files as Javascript
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead * if &ft == '' | set ft=javascript | endif

let g:Powerline_symbols = 'fancy' " make powerline nice.

let g:neocomplcache_enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"let javaScript_fold=1

let $VIMRUNTIME = "/Users/paolo/.vim"

filetype plugin indent on

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
