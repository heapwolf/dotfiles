set ts=2
set sw=2
set expandtab
set smarttab
set autoindent
set listchars=tab:▸\ ,eol:¬
set guifont=Monaco:h16
set list
set number
set go-=T
set hidden
set mouse=a
syntax on
map <Leader>d :NERDTreeToggle<CR>
:setlocal spell spelllang=en_us
colorscheme shady

vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>p
