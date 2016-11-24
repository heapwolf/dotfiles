"
" custom.vim
"
hi clear
syntax reset

let g:colors_name = expand("<sfile>:t:r")
command! -nargs=+ CSAHi exe "hi" <q-args>

CSAHi Normal ctermbg=236 ctermfg=248
CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=231
CSAHi PreProc term=underline cterm=bold ctermbg=bg ctermfg=242
CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=242
CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=111
CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=59
CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231
CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=21
CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=252
CSAHi Include term=NONE cterm=bold ctermbg=bg ctermfg=231
CSAHi SpecialKey term=bold cterm=NONE ctermbg=59 ctermfg=247
CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=153
CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=242
CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=231
CSAHi IncSearch term=reverse cterm=reverse ctermbg=242 ctermfg=16
CSAHi Search term=reverse cterm=NONE ctermbg=220 ctermfg=233
CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=242
CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg
CSAHi LineNr term=underline cterm=NONE ctermbg=235 ctermfg=238
CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=242
CSAHi RubySymbol term=NONE cterm=NONE ctermbg=bg ctermfg=242
CSAHi IndentGuidesOdd term=NONE cterm=NONE ctermbg=bg ctermfg=fg
CSAHi IndentGuidesEven term=NONE cterm=NONE ctermbg=bg ctermfg=fg 
CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201
CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51
CSAHi Pmenu term=NONE cterm=NONE ctermbg=59 ctermfg=231
CSAHi PmenuSel term=NONE cterm=NONE ctermbg=242 ctermfg=16
CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=59 ctermfg=231
CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=153 ctermfg=16
CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg
CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg
CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg
CSAHi CursorColumn term=reverse cterm=NONE ctermbg=241 ctermfg=fg
CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=242
CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=153
CSAHi CursorLineNr term=bold cterm=bold ctermbg=235 ctermfg=242
CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=242
CSAHi StatusLine term=reverse cterm=bold ctermbg=235 ctermfg=238
CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=235 ctermfg=235
CSAHi VertSplit term=reverse cterm=NONE ctermbg=235 ctermfg=235
CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=242
CSAHi Visual term=reverse cterm=NONE ctermbg=189 ctermfg=16
CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg
CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=242
CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16
CSAHi CursorLine term=underline cterm=NONE ctermbg=235 ctermfg=fg
CSAHi ColorColumn term=reverse cterm=NONE ctermbg=235 ctermfg=fg
CSAHi Cursor term=NONE cterm=NONE ctermbg=231 ctermfg=59
CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=59
CSAHi MatchParen term=NONE cterm=NONE ctermbg=220 ctermfg=232
CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=110
CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=242
CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=214
CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=242
CSAHi Define term=NONE cterm=bold ctermbg=bg ctermfg=231
CSAHi Folded term=NONE cterm=bold ctermbg=235 ctermfg=236
CSAHi FoldColumn term=NONE cterm=NONE ctermbg=235 ctermfg=51
CSAHi DiffAdd term=bold cterm=NONE ctermbg=18 ctermfg=fg
CSAHi DiffChange term=bold cterm=NONE ctermbg=90 ctermfg=fg
CSAHi DiffDelete term=bold cterm=bold ctermbg=30 ctermfg=21
CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg
CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51
CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252
CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196
CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=202
CSAHi NonText ctermbg=bg ctermfg=bg

CSAHi SyntasticErrorSign term=NONE cterm=NONE ctermbg=235 ctermfg=196
CSAHi SyntasticWarningSign term=NONE cterm=NONE ctermbg=235 ctermfg=202

CSAHi CtrlPStats term=NONE cterm=NONE ctermbg=235 ctermfg=235
CSAHi CtrlPBufName term=NONE cterm=NONE ctermbg=8 ctermfg=235

CSAHi NERDTreeOpenable ctermfg=236
CSAHi NERDTreeClosable ctermfg=236

"CSAHi NERDTreeGitStatusModified Tag
"CSAHi NERDTreeGitStatusStaged Tag
"CSAHi NERDTreeGitStatusRenamed Tag
"CSAHi NERDTreeGitStatusUnmerged Tag
"CSAHi NERDTreeGitStatusUntracked Tag
"CSAHi NERDTreeGitStatusAdded Tag
"CSAHi NERDTreeGitStatusRenamed 67
"CSAHi NERDTreeGitStatusDeleted 67
"CSAHi NERDTreeGitStatusUnknown Tag
"CSAHi NERDTreeGitStatusDirDirty 67
"CSAHi NERDTreeGitStatusDirClean Tag

delcommand CSAHi
