set background=dark

hi clear
if exists('syntax_on')
   syntax reset
endif

let g:colors_name = 'white'

"#114488

" Base
hi Normal                     guifg=#222222   guibg=#FFFFFF     gui=NONE      ctermfg=254      ctermbg=18           cterm=NONE
hi Cursor                     guifg=NONE      guibg=#82a9dc     gui=NONE      ctermfg=NONE     ctermbg=75           cterm=NONE
hi ColorColumn                guifg=NONE      guibg=#FAFAFA     gui=NONE      ctermfg=NONE     ctermbg=17           cterm=NONE
hi CursorColumn               guifg=NONE      guibg=#09346f     gui=NONE      ctermfg=NONE     ctermbg=17           cterm=NONE
hi CursorLine                 guifg=NONE      guibg=#09346f     gui=NONE      ctermfg=NONE     ctermbg=17           cterm=NONE
hi Directory                  guifg=#7a95b7   guibg=NONE        gui=NONE      ctermfg=NONE     ctermbg=NONE         cterm=NONE
hi DiffAdd                    guifg=NONE      guibg=#008000     gui=NONE      ctermfg=NONE     ctermbg=22           cterm=NONE
hi DiffChange                 guifg=NONE      guibg=#800080     gui=NONE      ctermfg=NONE     ctermbg=90           cterm=NONE
hi DiffDelete                 guifg=NONE      guibg=#800000     gui=NONE      ctermfg=NONE     ctermbg=88           cterm=NONE
hi DiffText                   guifg=NONE      guibg=#ff0000     gui=NONE      ctermfg=NONE     ctermbg=196          cterm=NONE
hi Error                      guifg=#ff0000   guibg=#ffffff
hi VertSplit                  guifg=#424242   guibg=#FFFFFF      gui=NONE      ctermfg=NONE     ctermbg=75           cterm=NONE
hi Folded                     guifg=NONE      guibg=#27599f     gui=bold      ctermfg=NONE     ctermbg=19           cterm=bold
hi FoldColumn                 guifg=NONE      guibg=NONE        gui=bold      ctermfg=NONE     ctermbg=NONE         cterm=bold
hi SignColumn                 guifg=NONE      guibg=NONE        gui=bold      ctermfg=NONE     ctermbg=NONE         cterm=bold
hi IncSearch                                                    gui=reverse                                         cterm=reverse
hi LineNr                     guifg=#a8a8a8   guibg=NONE        gui=NONE      ctermfg=248      ctermbg=NONE         cterm=NONE
hi CursorLineNr               guifg=#ffff00   guibg=NONE        gui=bold      ctermfg=226      ctermbg=NONE         cterm=bold
hi MatchParen                 guifg=#000000   guibg=#fff700     gui=NONE      ctermfg=17       ctermbg=226          cterm=NONE
hi MoreMsg                    guifg=NONE      guibg=NONE        gui=bold      ctermfg=NONE     ctermbg=NONE         cterm=bold
hi NonText                    guifg=#FFFFFF   guibg=#FFFFFF     gui=NONE      ctermfg=248      ctermbg=NONE         cterm=NONE
hi Pmenu                      guifg=NONE      guibg=NONE        gui=reverse   ctermfg=NONE     ctermbg=NONE         cterm=reverse
hi PmenuSel                   guifg=NONE      guibg=#09346f     gui=NONE      ctermfg=NONE     ctermbg=17           cterm=NONE
hi PmenuSbar                  guifg=NONE      guibg=NONE        gui=reverse   ctermfg=NONE     ctermbg=NONE         cterm=reverse
hi PmenuThumb                 guifg=NONE      guibg=NONE        gui=reverse   ctermfg=NONE     ctermbg=NONE         cterm=reverse
hi Question                   guifg=NONE      guibg=NONE        gui=bold      ctermfg=NONE     ctermbg=NONE         cterm=bold
hi Search                     guifg=#000000   guibg=#fff700     gui=NONE      ctermfg=17       ctermbg=172          cterm=NONE
hi SpecialKey                 guifg=#ffff00   guibg=NONE        gui=NONE      ctermfg=226      ctermbg=NONE         cterm=NONE
hi StatusLine                 guifg=#888888   guibg=#09346f     gui=NONE      ctermfg=254      ctermbg=NONE         cterm=NONE
hi StatusLineNC               guibg=#09346f   guifg=#09346f     gui=NONE      ctermfg=75       ctermbg=NONE         cterm=NONE
hi MsgArea                    guifg=#888888   guibg=#FFFFFF
hi TabLine                    guifg=#82a9dc   guibg=#7a95b7     gui=NONE      ctermfg=75       ctermbg=NONE         cterm=NONE
hi TabLineFill                guifg=NONE      guibg=NONE        gui=NONE      ctermfg=254      ctermbg=NONE         cterm=NONE
hi TabLineSel                 guifg=NONE      guibg=#09346f     gui=NONE      ctermfg=NONE     ctermbg=17           cterm=NONE
hi Title                      guifg=NONE      guibg=NONE        gui=bold      ctermfg=NONE     ctermbg=NONE         cterm=bold
hi Visual                     guifg=#000000   guibg=#fff700      gui=NONE      ctermfg=17       ctermbg=75           cterm=NONE

" GUI
hi Menu                       guifg=NONE      guibg=NONE        gui=NONE      ctermfg=NONE     ctermbg=NONE         cterm=NONE
hi! link Scollbar Menu
hi! link Tooltip Menu

" Styled Syntax Highlighting
hi Comment                    guifg=#8094b4   guibg=NONE     gui=italic    ctermfg=75       ctermbg=NONE         cterm=italic
hi Underlined                 guifg=NONE      guibg=NONE        gui=underline ctermfg=NONE     ctermbg=NONE         cterm=NONE
hi Ignore                     guifg=NONE      guibg=NONE        gui=underline ctermfg=NONE     ctermbg=NONE         cterm=NONE
hi String                     guifg=#aaaaaa   guibg=NONE        gui=NONE      ctermfg=172      ctermbg=NONE         cterm=NONE
hi Character                  guifg=#4797ff   guibg=NONE        gui=NONE      ctermfg=172      ctermbg=NONE         cterm=NONE
hi Todo                       guifg=#ffffff   guibg=#7a95b7       gui=bold      ctermfg=NONE     ctermbg=NONE         cterm=bold

" Unstyled Syntax Highlighting
hi Constant                   guifg=NONE      guibg=NONE        gui=NONE      ctermfg=NONE     ctermbg=NONE         cterm=NONE
hi Keyword                    guifg=NONE      guibg=NONE        gui=bold      ctermfg=NONE     ctermbg=NONE         cterm=NONE
hi Identifier                 guifg=NONE      guibg=NONE        gui=NONE      ctermfg=NONE     ctermbg=NONE         cterm=NONE
hi Statement                  guifg=NONE      guibg=NONE        gui=NONE      ctermfg=NONE     ctermbg=NONE         cterm=NONE
hi PreProc                    guifg=NONE      guibg=NONE        gui=NONE      ctermfg=NONE     ctermbg=NONE         cterm=NONE
hi Type                       guifg=NONE      guibg=NONE        gui=NONE      ctermfg=NONE     ctermbg=NONE         cterm=NONE
hi Special                    guifg=NONE      guibg=NONE        gui=NONE      ctermfg=NONE     ctermbg=NONE         cterm=NONE

"hi NvimTreeNormal guibg=#09346f
"hi NonText guifg=#114488  guibg=#114488
"hi StatusLineNC guifg=#114488   guibg=#114488
hi NvimTreeGitDirty guifg=#5c95ff
hi NvimTreeRootFolder guifg=#FFFFFF
hi NvimTreeMarkdownFile guifg=#ffffff
"hi NvimTreeStatusLine guifg=#114488   guibg=#114488
"NvimTreeGitStaged
"NvimTreeGitMerge
"NvimTreeGitRenamed
"NvimTreeGitNew
"NvimTreeGitDeleted
