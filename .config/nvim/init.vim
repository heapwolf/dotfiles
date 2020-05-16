"               __  __ 
"   | / / /\ᐱ  /_/ /   
" o |/ / /  / / \ /__  
"                      
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'robinfehr/nerdtree-git-plugin'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set mouse=a
set noswapfile
set hidden
set nobackup
set nowritebackup
set nowrap
set hlsearch
set laststatus=2
set cmdheight=2
set updatetime=300

set tabstop=2
set softtabstop=-1
set shiftwidth=0
set expandtab

set shortmess+=c
set signcolumn=yes

:command WQ wq
:command Wq wq
:command W w
:command Qa qall!
:command Q qall!

let &stl="%.50F"
let &stl.="%=%1*%{&modified ? ' + ' : ''}%0* "
let &stl.="%l:%c/%L "

colorscheme white

let g:gitgutter_max_signs=10000
let g:gitgutter_sign_added = '│'
let g:gitgutter_sign_modified = '│'
let g:gitgutter_sign_removed = '│'
let g:gitgutter_sign_removed_first_line = '│'
let g:gitgutter_sign_modified_removed = '│'

highlight link GitGutterAdd DiffAdd
highlight link GitGutterDelete DiffDelete
highlight link GitGutterChange DiffChange

let g:NERDTreeGitStatusWithFlags = 0
let g:NERDTreeGitStatusNodeColorization = 1

let g:NERDTreeDirArrowExpandable = nr2char(8200)
let g:NERDTreeDirArrowCollapsible = nr2char(8200)

map <Leader>d :NERDTreeToggle<CR>
map <Leader>w :bd<CR> 
map <Leader>f :CocList -A<CR> 

let g:NERDTreeUpdateOnWrite = 1      
autocmd vimenter * NERDTree          
let NERDTreeMinimalUI = 1            
let g:NERDTreeHighlightCursorline = 0

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
  \ 'pug': ['pug-lint'],
  \ 'rs': ['clippy']
  \}

let g:ale_sign_error = '┆' " '﯀'
let g:ale_sign_warning = '┆' " ''

let g:ale_cpp_clang_executable = 'clang++'
let g:ale_cpp_clang_options = '-std=c++2a -Wall -fcoroutines-ts'

let g:coc_global_extensions = [
  \ 'coc-emmet', 
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-lists',
  \ 'coc-tsserver',
  \ 'coc-clangd'
  \]

"
" COC
" ---
"

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

set fcs=vert:│,eob:\ 
