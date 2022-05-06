"
" https://themer.dev/?colors.dark.accent0=%23FF4050&colors.dark.accent1=%23F28144&colors.dark.accent2=%23FFD24A&colors.dark.accent3=%23A4CC35&colors.dark.accent4=%2366bfff&colors.dark.accent5=%2366BFFF&colors.dark.accent6=%2300d9ff&colors.dark.accent7=%231887dc&colors.dark.shade0=%232E3440&colors.dark.shade1=%23353a46&colors.dark.shade2=%234C566A&colors.dark.shade3=%23434C5E&colors.dark.shade4=%23A29DA3&colors.dark.shade5=%23C1BCC2&colors.dark.shade6=%23E0DCE0&colors.dark.shade7=%237f8994&colors.light.accent0=%23F03E4D&colors.light.accent1=%23F37735&colors.light.accent2=%23EEBA21&colors.light.accent3=%2397BD2D&colors.light.accent4=%231FC598&colors.light.accent5=%2353A6E1&colors.light.accent6=%23BF65F0&colors.light.accent7=%23EE4EB8&colors.light.shade0=%23FFFCFF&colors.light.shade1=%23E0DCE0&colors.light.shade2=%23C1BCC2&colors.light.shade3=%23A29DA3&colors.light.shade4=%23847E85&colors.light.shade5=%23656066&colors.light.shade6=%23474247&colors.light.shade7=%23282629&activeColorSet=dark&calculateIntermediaryShades.dark=false&calculateIntermediaryShades.light=false
"

hi clear
syntax reset

if &background == 'dark'

let s:Bg = "#2E3440"
let s:Bg2 = "#353a46"
let s:Red = "#FF4050"
let s:Gray = "#434C5E"
let s:LightGray = "#4C566A"
let s:guishade4 = "#a29da3"
let s:guishade5 = "#c1bcc2"
let s:White = "#7f8994"
let s:LightWhite = "#E0DCE0"
let s:guishade7 = "#fffcff"
let s:guiaccent0 = "#d54d59"
let s:guiaccent1 = "#f28144"
let s:Yellow = "#ffd24a"
let s:guiaccent3 = "#a4cc35"
let s:guiaccent4 = "#3adfb3"
let s:Blue = "#66bfff"
let s:guiaccent6 = "#00d9ff"
let s:guiaccent7 = "#1887dc"

endif

if &background == 'light'

" TODO override

endif

""""""""""
" Normal "
""""""""""

exec "hi Normal guifg=".s:White." guibg=".s:Bg

"""""""""""""""""
" Syntax groups "
"""""""""""""""""

" Default

exec "hi Comment guifg=".s:Gray
exec "hi Constant guifg=".s:guiaccent3
exec "hi Character guifg=".s:guiaccent4
exec "hi Identifier guifg=".s:White." gui=none"
exec "hi Statement guifg=".s:LightGray
exec "hi String guifg=".s:LightWhite
exec "hi PreProc guifg=".s:guiaccent6
exec "hi Type guifg=".s:guiaccent7
exec "hi Special guifg=".s:guiaccent4
exec "hi Underlined guifg=".s:Blue
exec "hi Error guifg=".s:guiaccent0." guibg=".s:Bg2
exec "hi Todo guifg=".s:guiaccent0." guibg=".s:Bg2
exec "hi Function guifg=".s:Gray

" GitGutter

exec "hi GitGutterAdd guifg=".s:guiaccent3
exec "hi GitGutterChange guifg=".s:Yellow
exec "hi GitGutterChangeDelete guifg=".s:Yellow
exec "hi GitGutterDelete guifg=".s:guiaccent0

exec "hi NvimTreeFolderIcon guifg=".s:White
exec "hi Directory guifg=".s:White

"""""""""""""""""""""""
" Highlighting Groups "
"""""""""""""""""""""""

" Default

exec "hi ColorColumn guibg=".s:Bg2
exec "hi Conceal guifg=".s:Gray
exec "hi Cursor guifg=".s:Red
exec "hi CursorColumn guibg=".s:Bg2
exec "hi CursorLine guibg=".s:Bg2
exec "hi DiffAdd guifg=".s:guiaccent3." guibg=".s:Bg2
exec "hi DiffChange guifg=".s:Yellow." guibg=".s:Bg2
exec "hi DiffDelete guifg=".s:guiaccent0." guibg=".s:Bg2
exec "hi DiffText guifg=".s:Yellow." guibg=".s:Gray
exec "hi ErrorMsg guifg=".s:guishade7." guibg=".s:guiaccent0
exec "hi VertSplit guifg=".s:Bg." guibg=".s:Bg
exec "hi Folded guifg=".s:guishade4." guibg=".s:Bg2
exec "hi FoldColumn guifg=".s:guishade4." guibg=".s:Bg2
exec "hi SignColumn guibg=NONE"
exec "hi IncSearch guifg=".s:White." guibg=".s:Yellow
exec "hi LineNr guifg=".s:Gray." guibg=".s:Red
exec "hi CursorLineNr guifg=".s:LightGray." guibg=".s:Bg2
exec "hi MatchParen guibg=".s:Gray
exec "hi MoreMsg guifg=".s:Red." guibg=".s:guiaccent4
exec "hi NonText guifg=".s:Bg." guibg=".s:Bg
exec "hi Pmenu guifg=".s:White." guibg=".s:Bg2
exec "hi PmenuSel guifg=".s:guiaccent4." guibg=".s:Bg2
exec "hi PmenuSbar guifg=".s:guiaccent3." guibg=".s:Bg2
exec "hi PmenuThumb guifg=".s:guiaccent0." guibg=".s:Gray
exec "hi Question guifg=".s:guishade7." guibg=".s:Bg2
exec "hi Search guifg=".s:White." guibg=".s:Yellow
exec "hi SpecialKey guifg=".s:guiaccent7." guibg=".s:Red
exec "hi SpellBad guifg=".s:guiaccent0
exec "hi SpellCap guifg=".s:Yellow
exec "hi SpellLocal guifg=".s:guiaccent4
exec "hi SpellRare guifg=".s:guiaccent1
exec "hi StatusLine guifg=".s:LightGray." guibg=".s:Bg2." gui=none"
exec "hi StatusLineNC guifg=".s:Bg2." guibg=".s:Bg2." gui=none"
exec "hi TabLine guifg=".s:guishade5." guibg=".s:Bg2
exec "hi TabLineFill guibg=".s:Bg2
exec "hi TabLineSel guifg=".s:White." guibg=".s:Red
exec "hi Title guifg=".s:White
exec "hi Visual guibg=".s:Bg2." guifg=".s:White
exec "hi VisualNOS guifg=".s:guiaccent0." guibg=".s:Bg2
exec "hi WarningMsg guifg=".s:guiaccent0
exec "hi WildMenu guifg=".s:guiaccent4." guibg=".s:Bg2
exec "hi EndOfBuffer guifg=".s:Bg." guibg=".s:Bg
exec "hi SideBarEndOfBuffer guifg=".s:Bg2." guibg=".s:Bg2

hi NvimTreeGitDirty guifg=#5c95ff
hi NvimTreeRootFolder guifg=#2d3442
hi NvimTreeMarkdownFile guifg=#ffffff

" Tree
exec "hi NvimTreeGitDirty guifg=".s:Blue

""""""""""""
" Clean up "
""""""""""""

unlet s:Red s:Bg2 s:Gray s:LightGray s:guishade4 s:guishade5 s:White s:guishade7 s:guiaccent0 s:guiaccent1 s:Yellow s:guiaccent3 s:guiaccent4 s:Blue s:guiaccent6 s:guiaccent7

