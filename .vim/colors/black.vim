hi clear
set background=dark

hi FileDescription ctermfg=238 ctermbg=228
match FileDescription /DESCRIPTION/

hi Normal          ctermfg=0    ctermbg=15
hi CursorLine                   ctermbg=242
hi CursorLineNr    ctermfg=242
hi Boolean         ctermfg=242
hi Character       ctermfg=242
hi Number          ctermfg=242
hi String          ctermfg=242
hi Conditional     ctermfg=242
hi Constant        ctermfg=242
hi Cursor          ctermfg=242 ctermbg=253
hi Debug           ctermfg=242
hi Define          ctermfg=242
hi Delimiter       ctermfg=242

hi DiffAdd         ctermfg=2   ctermbg=NONE
hi DiffChange      ctermfg=184 ctermbg=NONE
hi DiffDelete      ctermfg=1   ctermbg=NONE
hi DiffText                    ctermbg=NONE

hi Directory       ctermfg=155
hi Error           ctermfg=238   ctermbg=245
hi Exception       ctermfg=242
hi FoldColumn      ctermfg=238   ctermbg=242
hi Folded          ctermfg=238   ctermbg=242
hi Float           ctermfg=238
hi Ignore          ctermfg=244 ctermbg=232
hi IncSearch       ctermfg=193 ctermbg=16

hi Keyword         ctermfg=242
hi Identifier      ctermfg=242
hi Include         ctermfg=242
hi PreProc         ctermfg=242
hi Type            ctermfg=242
hi Label           ctermfg=242
hi Macro           ctermfg=242
hi SpecialKey      ctermfg=242
hi Function        ctermfg=235

hi MatchParen      ctermfg=238  ctermbg=228
hi Operator        ctermfg=242

" complete menu
hi Pmenu           ctermfg=255  ctermbg=242
hi PmenuSel        ctermfg=240  ctermbg=228
hi PmenuSbar                    ctermbg=232
hi PmenuThumb      ctermfg=242

hi PreCondit       ctermfg=242
hi PreProc         ctermfg=242
hi Question        ctermfg=242
hi Repeat          ctermfg=242
hi Search          ctermfg=238   ctermbg=222

" marks column
hi SignColumn      ctermfg=242 ctermbg=NONE
hi SpecialChar     ctermfg=242
hi Special         ctermfg=242
if has("spell")
   hi SpellBad                 ctermbg=52
   hi SpellCap                 ctermbg=195
   hi SpellLocal               ctermbg=NONE
   hi SpellRare   ctermfg=NONE ctermbg=NONE cterm=reverse
endif
hi Statement       ctermfg=242
hi StatusLine      ctermfg=252  ctermbg=15
hi StatusLineNC    ctermfg=252  ctermbg=252
hi StorageClass    ctermfg=242
hi Structure       ctermfg=242
hi Tag             ctermfg=242
hi Title           ctermfg=242
hi Todo            ctermfg=238    ctermbg=228
hi Directory       ctermfg=242
hi Search          ctermbg=228  ctermfg=232

hi Typedef         ctermfg=242
hi Type            ctermfg=242
hi Underlined      ctermfg=242  cterm=underline

hi VertSplit       ctermfg=252 ctermbg=NONE cterm=bold
hi VisualNOS       ctermfg=0  ctermbg=230
hi Visual          ctermfg=0  ctermbg=230

hi WarningMsg      ctermfg=250  ctermbg=NONE
hi ErrorMsg        ctermfg=250 ctermbg=NONE
hi ModeMsg         ctermfg=250 ctermbg=NONE
hi MoreMsg         ctermfg=250 ctermbg=NONE

hi CursorColumn                ctermbg=236
hi LineNr          ctermfg=242 ctermbg=NONE
hi NonText         ctermfg=15 ctermbg=15

hi SpecialKey      ctermfg=242
hi ColorColumn     ctermbg=NONE ctermfg=196

hi SpecialComment               ctermfg=250
hi Comment                      ctermfg=250

hi NERDTreeDirSlash ctermfg=244
hi NERDTreeOpenable ctermfg=244
hi NERDTreeClosable ctermfg=244
hi NERDTreeCWD ctermfg=244

hi def link NERDTreeGitStatusUnmerged Directory
hi def link NERDTreeGitStatusModified WarningMsg
hi def link NERDTreeGitStatusAdded    WarningMsg
hi def link NERDTreeGitStatusRenamed  Directory
hi def link NERDTreeGitStatusDeleted  WarningMsg
hi def link NERDTreeGitStatusUnknown  WarningMsg
hi def link NERDTreeGitStatusDirDirty WarningMsg
hi def link NERDTreeGitStatusDirClean Directory

hi ALEError ctermfg=196 ctermbg=NONE cterm=bold
hi ALEErrorSign ctermfg=196 ctermbg=NONE
hi ALEWarningSign ctermfg=220 ctermbg=NONE
