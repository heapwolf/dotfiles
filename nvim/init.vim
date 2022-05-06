"
"   | / / /\ᐱ  __ __
" o |/ / /  / /  /__
"

"
" GENERAL
" -------
"

set autoread                           " check for changes automatically
au CursorHold * checktime              " reload the changes once idle

set nocompatible                       " dont care about vi
set mouse=a                            " enable mouse support
set guioptions+=a                      " copy to clipboard
set backspace=indent,eol,start         " normal backspace behavior
"set t_Co=256                           " ensure 256 colors
set spelllang=en_us                    " english language spelling

set noswapfile                         " more trouble than they are worth
set hidden                             " allow unsaved buffers in background
set laststatus=2                       " show the status line
set nowrap                             " dont wrap long lines
set hlsearch                           " highlight search matches
set clipboard=unnamed                  " copy from vim to your mac pasteboard
"set clipboard=unnamedplus
"set number                            " no line numbers, statusbar is enough
"set wildmode=longest,list,full        " full list menu for tab completion asdfa
set background=light
set signcolumn=number                  " always show it doesnt shift the screen
autocmd BufWinEnter,WinEnter * if &buftype == 'terminal' | silent! normal i | endif

"set tw=80
"set fo+=t

"
" WHITESPACE & SPECIAL CHARACTERS
" -------------------------------
" What do to with special characters
"
set tabstop=2 shiftwidth=2 expandtab   " tabs to spaces
set smarttab smartindent autoindent    " automigical indenting

set listchars=tab:▸\ ,eol:\            " show special characters
" set fillchars=fold:\                   " fill the foldline with whitespace

"set statusline=
"set statusline+=%m\ \ %l

let &stl="%.50F"
let &stl.="%=%1*%{&modified ? ' + ' : ''}%0* "
let &stl.="%l:%c/%L "

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
"noremap ; :
map <c-f> :Telescope<CR>
:command WQ wq
:command Wq wq
:command W w
:command Qa qall!
:command Q qall!

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-b>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"
" PLUGINS
" -------
" Stuff that makes vim better
"
call plug#begin('~/.vim/plugged')
"Plug 'nvim-lua/popup.nvim'
Plug 'github/copilot.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'ziglang/zig.vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ayu-theme/ayu-vim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'arcticicestudio/nord-vim'
"Plug 'BurntSushi/ripgrep'
"Plug 'romgrk/barbar.nvim'
Plug 'Badacadabra/vim-archery'
Plug 'karoliskoncevicius/distilled-vim'
"Plug 'itchyny/lightline.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"set rtp+=~/.vim/bundle/Vundle.vim/
"call vundle#begin()

" Plugin 'gmarik/Vundle.vim'
"Plugin 'ryanoasis/vim-devicons'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'w0rp/ale'
"Plugin 'mhinz/vim-grepper'
"Plugin 'itchyny/vim-gitbranch'
"Plugin 'tpope/vim-commentary'
"Bundle 'wavded/vim-stylus'
"Bundle 'gorodinskiy/vim-coloresque.git'

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

"call vundle#end()

"
" STATUS LINE
" -----------
"
"let &stl="%.50F"
"let &stl.="%=%1*%{&modified ? ' + ' : ''}%0* "
"let &stl.="%l:%c/%L "
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

""
"" Remove trailing whitespace on save
""
autocmd BufWritePre * :%s/\s\+$//e

"
" TREE
" ----
"
"imap <C-n><esc> :NvimTreeToggle<CR>
"map <C-n> :NvimTreeToggle<CR>
"map <Tab> :NvimTreeToggle<CR>

lua << EOF
  local t = require('nvim-tree')

  t.setup {
    disable_netrw       = true,
    hijack_netrw        = true,
    open_on_setup       = false,
    ignore_ft_on_setup  = {},
    auto_close          = false,
    open_on_tab         = false,
    hijack_cursor       = false,
    update_cwd          = false,
    update_to_buf_dir   = {
      enable = true,
      auto_open = true,
    },
    diagnostics = {
      enable = false,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      }
    },
    update_focused_file = {
      enable      = false,
      update_cwd  = false,
      ignore_list = {}
    },
    system_open = {
      cmd  = nil,
      args = {}
    },
    filters = {
      dotfiles = false,
      custom = {}
    },
    view = {
      width = 30,
      hide_root_folder = true,
      side = 'left',
      auto_resize = false,
      mappings = {
        custom_only = false,
        list = {}
      }
    }
  }
EOF

"let g:nvim_tree_side = 'left' "left by default
let g:nvim_tree_width = 40 "30 by default, can be width_in_columns or 'width_in_percent%'
"let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
"let g:nvim_tree_gitignore = 1 "0 by default
"let g:nvim_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
"let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ] "empty by default, don't auto open tree on specific filetypes.
"let g:nvim_tree_quit_on_open = 0 "0 by default, closes the tree when you open a file
"let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
"let g:nvim_tree_indent_markers = 0 "0 by default, this option shows indent markers when folders are open
"let g:nvim_tree_hide_dotfiles = 0 "0 by default, this option hides files and folders starting with a dot `.`
"let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
"let g:nvim_tree_highlight_opened_files = 0 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
"let g:nvim_tree_tab_open = 0 "0 by default, will open the tree when entering a new tab and the tree was previously open
"let g:nvim_tree_add_trailing = 0 "0 by default, append a trailing slash to folder names
"let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
"let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
"let g:nvim_tree_update_cwd = 1 "0 by default, will update the tree cwd when changing nvim's directory (DirChanged event). Behaves strangely with autochdir set.
let g:nvim_tree_window_picker_exclude = {
    \   'filetype': [
    \     'packer',
    \     'qf'
    \   ],
    \   'buftype': [
    \     'terminal'
    \   ]
    \ }
" Dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 0,
    \ 'folders': 1,
    \ 'files': 0,
    \ 'folder_arrows': 0,
    \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': ' ',
    \ 'symlink': ' ',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
    \ }

nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

"
" TERM
" ----
"
" Terminal Function
let g:term_buf = 0
let g:term_win = 0

function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
            hi BlackBg guibg=#222222
            set winhighlight=Normal:BlackBg
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

nnoremap <C-t> :call TermToggle(12)<CR>
inoremap <C-t> <Esc>:call TermToggle(12)<CR>

let g:tree_open = 0
function! TreeToggle()
  if g:tree_open
    let g:tree_open = 0
    exec "NvimTreeClose"
  else
    let g:tree_open = 1
    exec "NvimTreeOpen"
    set winhighlight=Normal:Pmenu,EndOfBuffer:SideBarEndOfBuffer
  endif
endfunction

nnoremap <C-P> :call TreeToggle()<CR>
inoremap <C-P> <Esc>:call TreeToggle()<CR>

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

""
"" Airline
""
"let g:airline_theme='base16_grayscale'
"let g:airline_theme='base16_harmonic_dark'
let g:airline_theme='base16_google_dark'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#term = 1
let g:airline_powerline_fonts = 1

""
"" ICONS
"" -----
" This is how we get the fancy icons
"
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsUnicodeDecorateFileNodes = 0
let g:webdevicons_conceal_nerdtree_brackets = 1
"let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

"
" COLORS & SYNTAX
" ---------------
"
syntax on                              " Syntax highlighting please
colorscheme base16-grayscale-dark

match ErrorMsg '\%>80v.\+'
" set synmaxcol=80
let &colorcolumn=join(range(81,280),",")
" let &colorcolumn="80,".join(range(128,999),",") " Advise where to stop

"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

"set fcs=vert:│
set fcs=vert:\

"
" SCROLL
" ------
" Dont scroll past the bottom line
"
noremap <ScrollWheelUp> H5k
noremap <ScrollWheelDown> L5j

set noshowmode  " to get rid of thing like --INSERT--
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar

hi NvimTreeFolderIcon guifg=NONE guibg=NONE
