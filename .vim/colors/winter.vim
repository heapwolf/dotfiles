"
" winter.vim
"

hi clear
syntax reset

command! -nargs=+ CSAHi exe "hi" <q-args>

CSAHi Normal ctermbg=255 ctermfg=244
CSAHi Statement ctermfg=0
CSAHi PreProc ctermfg=242
CSAHi Type ctermfg=242
CSAHi String ctermfg=240
CSAHi Identifier ctermbg=NONE ctermfg=242
CSAHi Constant ctermbg=NONE ctermfg=130
CSAHi Include ctermfg=231
CSAHi Error ctermfg=231
CSAHi Directory ctermfg=242
CSAHi Search ctermbg=220 ctermfg=232

CSAHi NonText ctermbg=255 ctermfg=255
CSAHi VertSplit ctermbg=245 ctermfg=245
CSAHi StatusLine ctermbg=NONE ctermfg=245
CSAHi StatusLineNC ctermbg=245 ctermfg=245
CSAHi CursorLine cterm=NONE ctermbg=245 ctermfg=231
CSAHi ColorColumn ctermbg=254 ctermfg=NONE
CSAHi SignColumn ctermbg=245 ctermfg=245
CSAHi SyntasticErrorSign ctermbg=245 ctermfg=196
CSAHi SyntasticWarningSign ctermbg=245 ctermfg=202

CSAHi TabLine cterm=NONE ctermbg=245 ctermfg=0
CSAHi TabLineSel ctermbg=NONE ctermfg=0
CSAHi TabLineFill cterm=reverse ctermbg=245 ctermfg=245

CSAHi Pmenu ctermbg=245 ctermfg=231

CSAHi Cursor term=NONE cterm=NONE ctermbg=231 ctermfg=59
CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=59
CSAHi MatchParen term=NONE cterm=NONE ctermbg=220 ctermfg=232
CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=39
CSAHi Define term=NONE cterm=bold ctermbg=bg ctermfg=231
CSAHi Folded term=NONE cterm=bold ctermbg=235 ctermfg=236
CSAHi FoldColumn term=NONE cterm=NONE ctermbg=235 ctermfg=51
CSAHi DiffAdd term=bold cterm=NONE ctermbg=18 ctermfg=fg
CSAHi DiffChange term=bold cterm=NONE ctermbg=90 ctermfg=fg
CSAHi DiffDelete term=bold cterm=bold ctermbg=30 ctermfg=21
CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg

CSAHi GitGutterAdd ctermfg=112 " an added line
CSAHi GitGutterChange  ctermfg=1 " a changed line
CSAHi GitGutterDelete  ctermfg=1 " at least one removed line
CSAHi GitGutterChangeDelete ctermfg=1 " a changed line followed by at least one removed line

CSAHi Special term=bold cterm=NONE ctermbg=NONE ctermfg=NONE
CSAHi Conceal term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE

CSAHi NERDTreeGitStatusModified ctermfg=1
CSAHi NERDTreeGitStatusStaged ctermfg=1
CSAHi NERDTreeGitStatusRenamed ctermfg=1
CSAHi NERDTreeGitStatusUnmerged ctermfg=1
CSAHi NERDTreeGitStatusUntracked ctermfg=1
CSAHi NERDTreeGitStatusAdded ctermfg=1
CSAHi NERDTreeGitStatusRenamed ctermfg=1
CSAHi NERDTreeGitStatusDeleted ctermfg=1
CSAHi NERDTreeGitStatusUnknown ctermfg=1
CSAHi NERDTreeGitStatusDirDirty ctermfg=1
CSAHi NERDTreeGitStatusDirClean ctermfg=1

CSAHi NERDTreeOpenable ctermbg=255 ctermfg=255
CSAHi NERDTreeClosable ctermbg=255 ctermfg=255

delcommand CSAHi

