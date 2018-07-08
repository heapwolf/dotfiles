set background=light

hi Normal ctermbg=NONE ctermfg=255

hi CursorLine      ctermbg=4
hi CursorLineNr    ctermfg=4
hi Boolean         ctermfg=255
hi Character       ctermfg=255
hi Number          ctermfg=255
hi String          ctermfg=250  ctermbg=0
hi Conditional     ctermfg=255
hi Constant        ctermfg=255
hi Cursor          ctermfg=255
hi Debug           ctermfg=255
hi Define          ctermfg=255
hi Delimiter       ctermfg=255

hi DiffAdd                      ctermbg=4
hi DiffChange      ctermfg=181  ctermbg=239
hi DiffDelete      ctermfg=162  ctermbg=53
hi DiffText                     ctermbg=142   cterm=bold

hi Directory       ctermfg=8               cterm=NONE
hi Error           ctermfg=1    ctermbg=NONE
hi ErrorMsg        ctermfg=1    ctermbg=NONE
hi Exception       ctermfg=1    ctermbg=NONE
hi Float           ctermfg=135
hi FoldColumn      ctermfg=4  ctermbg=NONE
hi Folded          ctermfg=4  ctermbg=NONE
hi Keyword         ctermfg=8
hi Function        ctermfg=8
hi Identifier      ctermfg=8               cterm=none
hi Ignore          ctermfg=244  ctermbg=15
hi IncSearch       ctermfg=193  ctermbg=15

hi Label           ctermfg=255
hi Macro           ctermfg=255
hi SpecialKey      ctermfg=255

hi MatchParen      ctermfg=0  ctermbg=221
hi ModeMsg         ctermfg=8
hi MoreMsg         ctermfg=8
hi Operator        ctermfg=8

""
"" complete prompt
""
hi Pmenu           ctermfg=245  ctermbg=255
hi PmenuSel        ctermfg=15   ctermbg=255
hi PmenuSbar                    ctermbg=232
hi PmenuThumb      ctermfg=255

hi PreCondit       ctermfg=255                 cterm=bold
hi PreProc         ctermfg=255
hi Question        ctermfg=255
hi Repeat          ctermfg=255                 cterm=bold

" marks column
hi SignColumn      ctermfg=4   ctermbg=none
hi SpecialChar     ctermfg=4                 cterm=bold
hi SpecialComment  ctermfg=4                 cterm=bold
hi Special         ctermbg=none     ctermfg=2

if has("spell")
   hi SpellBad                   ctermbg=1     ctermfg=15
   hi SpellCap                   ctermbg=15
   hi SpellLocal                 ctermbg=15
   hi SpellRare    ctermfg=none  ctermbg=15
endif

"
hi StatusLineTerm  ctermfg=15  ctermbg=8
hi StatusLineTermNC ctermfg=8  ctermbg=8
hi Terminal ctermbg=0

" TODO

hi Statement       ctermfg=255               cterm=bold
hi StatusLine      ctermfg=255  ctermbg=8    cterm=none
hi StatusLineNC    ctermfg=8    ctermbg=8
hi StorageClass    ctermfg=255
hi Structure       ctermfg=255
hi Tag             ctermfg=255
hi Title           ctermfg=255
hi Todo            ctermfg=228  ctermbg=0
hi Directory       ctermfg=8
hi Search          ctermbg=228  ctermfg=232

hi Typedef         ctermfg=255
hi Type            ctermfg=8
hi Underlined      ctermfg=255                 cterm=underline

hi VertSplit       ctermfg=8    ctermbg=none   cterm=bold
hi VisualNOS                    ctermbg=221
hi Visual                       ctermbg=221
hi WarningMsg      ctermfg=15   ctermbg=255    cterm=NONE
hi WildMenu        ctermfg=15   ctermbg=0

hi CursorColumn                 ctermbg=236
hi LineNr          ctermfg=8    ctermbg=none
hi NonText         ctermfg=237  ctermbg=237


hi SpecialKey      ctermfg=8
hi ColorColumn     ctermbg=NONE ctermfg=none

" THIS IS A COMMENT 
hi Comment         ctermbg=0 ctermfg=8
