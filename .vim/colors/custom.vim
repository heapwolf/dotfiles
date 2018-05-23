set background=light

hi Normal ctermbg=NONE ctermfg=8

hi CursorLine      ctermbg=74
hi CursorLineNr    ctermfg=74
hi Boolean         ctermfg=8
hi Character       ctermfg=8
hi Number          ctermfg=8
hi String          ctermfg=8 ctermbg=0
hi Conditional     ctermfg=8
hi Constant        ctermfg=8
hi Cursor          ctermfg=8
hi Debug           ctermfg=8
hi Define          ctermfg=8
hi Delimiter       ctermfg=8

hi DiffAdd                       ctermbg=74
hi DiffChange      ctermfg=181   ctermbg=239
hi DiffDelete      ctermfg=162   ctermbg=53
hi DiffText                      ctermbg=142   cterm=bold

hi Directory       ctermfg=3                   cterm=NONE
hi Error           ctermfg=8   ctermbg=NONE
hi ErrorMsg        ctermfg=254   ctermbg=NONE
hi Exception       ctermfg=8   ctermbg=NONE
hi Float           ctermfg=135
hi FoldColumn      ctermfg=74     ctermbg=744
hi Folded          ctermfg=74     ctermbg=744
hi Keyword         ctermfg=74
hi Function        ctermfg=74
hi Identifier      ctermfg=74     cterm=none
hi Ignore          ctermfg=244   ctermbg=15
hi IncSearch       ctermfg=193   ctermbg=15

hi Label           ctermfg=8
hi Macro           ctermfg=8
hi SpecialKey      ctermfg=8

hi MatchParen      ctermfg=8     ctermbg=228 cterm=bold
hi ModeMsg         ctermfg=74
hi MoreMsg         ctermfg=74
hi Operator        ctermfg=74

""
"" complete prompt
""
hi Pmenu           ctermfg=245  ctermbg=8
hi PmenuSel        ctermfg=15   ctermbg=8
hi PmenuSbar                    ctermbg=232
hi PmenuThumb      ctermfg=8

hi PreCondit       ctermfg=8                cterm=bold
hi PreProc         ctermfg=8
hi Question        ctermfg=8
hi Repeat          ctermfg=8                cterm=bold

" marks column
hi SignColumn      ctermfg=74   ctermbg=none
hi SpecialChar     ctermfg=74                 cterm=bold
hi SpecialComment  ctermfg=74                 cterm=bold
hi Special         ctermbg=7     ctermfg=74

if has("spell")
   hi SpellBad                   ctermbg=8    ctermfg=234
   hi SpellCap                   ctermbg=15
   hi SpellLocal                 ctermbg=15
   hi SpellRare    ctermfg=none  ctermbg=15
endif

hi Statement       ctermfg=8                cterm=bold
hi StatusLine      ctermfg=15    ctermbg=74    cterm=none
hi StatusLineNC    ctermfg=74     ctermbg=74
hi StorageClass    ctermfg=8
hi Structure       ctermfg=8
hi Tag             ctermfg=8
hi Title           ctermfg=8
hi Todo            ctermfg=238 ctermbg=232    cterm=bold
hi Directory       ctermfg=74
hi Search          ctermbg=228  ctermfg=232

hi Typedef         ctermfg=8
hi Type            ctermfg=246
hi Underlined      ctermfg=8                cterm=underline

hi VertSplit       ctermfg=74  ctermbg=none   cterm=bold
hi VisualNOS                    ctermbg=228
hi Visual                       ctermbg=228
hi WarningMsg      ctermfg=15   ctermbg=8    cterm=NONE
hi WildMenu        ctermfg=15   ctermbg=15

hi CursorColumn                 ctermbg=236
hi LineNr          ctermfg=74  ctermbg=none
hi NonText         ctermfg=15  ctermbg=none


hi SpecialKey      ctermfg=74
hi ColorColumn     ctermbg=NONE ctermfg=none

" THIS IS A COMMENT 
hi Comment         ctermbg=255 ctermfg=74
