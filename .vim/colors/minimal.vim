" Vim color file
" Converted from Textmate theme minimal Theme using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "minimal"

hi Cursor ctermfg=52 ctermbg=208 cterm=NONE guifg=#302d26 guibg=#ff9900 gui=NONE
hi Visual ctermfg=NONE ctermbg=16 cterm=NONE guifg=NONE guibg=#180024 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#444239 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#444239 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#444239 gui=NONE
hi LineNr ctermfg=102 ctermbg=59 cterm=NONE guifg=#969683 guibg=#444239 gui=NONE
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#6b6a5c guibg=#6b6a5c gui=NONE
hi MatchParen ctermfg=108 ctermbg=NONE cterm=underline guifg=#949c8b guibg=NONE gui=underline
hi StatusLine ctermfg=230 ctermbg=59 cterm=bold guifg=#fcffe0 guibg=#6b6a5c gui=bold
hi StatusLineNC ctermfg=230 ctermbg=59 cterm=NONE guifg=#fcffe0 guibg=#6b6a5c gui=NONE
hi Pmenu ctermfg=94 ctermbg=NONE cterm=NONE guifg=#84730b guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=16 cterm=NONE guifg=NONE guibg=#180024 gui=NONE
hi IncSearch ctermfg=52 ctermbg=102 cterm=NONE guifg=#302d26 guibg=#9a807c gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab641b guibg=NONE gui=NONE
hi Folded ctermfg=59 ctermbg=52 cterm=NONE guifg=#706d5b guibg=#302d26 gui=NONE

hi Normal ctermfg=230 ctermbg=52 cterm=NONE guifg=#fcffe0 guibg=#302d26 gui=NONE
hi Boolean ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab641b guibg=NONE gui=NONE
hi Character ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab641b guibg=NONE gui=NONE
hi Comment ctermfg=59 ctermbg=NONE cterm=NONE guifg=#706d5b guibg=NONE gui=italic
hi Conditional ctermfg=108 ctermbg=NONE cterm=NONE guifg=#949c8b guibg=NONE gui=NONE
hi Constant ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab641b guibg=NONE gui=NONE
hi Define ctermfg=108 ctermbg=NONE cterm=NONE guifg=#949c8b guibg=NONE gui=NONE
hi DiffAdd ctermfg=230 ctermbg=64 cterm=bold guifg=#fcffe0 guibg=#48840c gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8d0908 guibg=NONE gui=NONE
hi DiffChange ctermfg=230 ctermbg=23 cterm=NONE guifg=#fcffe0 guibg=#283c57 gui=NONE
hi DiffText ctermfg=230 ctermbg=24 cterm=bold guifg=#fcffe0 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=231 ctermbg=88 cterm=NONE guifg=#f8f8f8 guibg=#800f00 gui=NONE
hi WarningMsg ctermfg=231 ctermbg=88 cterm=NONE guifg=#f8f8f8 guibg=#800f00 gui=NONE
hi Float ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab641b guibg=NONE gui=NONE
hi Function ctermfg=94 ctermbg=NONE cterm=NONE guifg=#84730b guibg=NONE gui=NONE
hi Identifier ctermfg=228 ctermbg=NONE cterm=NONE guifg=#ffee80 guibg=NONE gui=NONE
hi Keyword ctermfg=108 ctermbg=NONE cterm=NONE guifg=#949c8b guibg=NONE gui=NONE
hi Label ctermfg=102 ctermbg=NONE cterm=NONE guifg=#9a807c guibg=NONE gui=NONE
hi NonText ctermfg=59 ctermbg=58 cterm=NONE guifg=#72573d guibg=#3a382f gui=NONE
hi Number ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab641b guibg=NONE gui=NONE
hi Operator ctermfg=108 ctermbg=NONE cterm=NONE guifg=#949c8b guibg=NONE gui=NONE
hi PreProc ctermfg=108 ctermbg=NONE cterm=NONE guifg=#949c8b guibg=NONE gui=NONE
hi Special ctermfg=230 ctermbg=NONE cterm=NONE guifg=#fcffe0 guibg=NONE gui=NONE
hi SpecialKey ctermfg=59 ctermbg=59 cterm=NONE guifg=#72573d guibg=#444239 gui=NONE
hi Statement ctermfg=108 ctermbg=NONE cterm=NONE guifg=#949c8b guibg=NONE gui=NONE
hi StorageClass ctermfg=228 ctermbg=NONE cterm=NONE guifg=#ffee80 guibg=NONE gui=NONE
hi String ctermfg=102 ctermbg=NONE cterm=NONE guifg=#9a807c guibg=NONE gui=NONE
hi Tag ctermfg=94 ctermbg=NONE cterm=NONE guifg=#84730b guibg=NONE gui=NONE
hi Title ctermfg=230 ctermbg=NONE cterm=bold guifg=#fcffe0 guibg=NONE gui=bold
hi Todo ctermfg=59 ctermbg=NONE cterm=inverse,bold guifg=#706d5b guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=94 ctermbg=NONE cterm=NONE guifg=#84730b guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=108 ctermbg=NONE cterm=NONE guifg=#949c8b guibg=NONE gui=NONE
hi rubyFunction ctermfg=94 ctermbg=NONE cterm=NONE guifg=#84730b guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab641b guibg=NONE gui=NONE
hi rubyConstant ctermfg=144 ctermbg=NONE cterm=NONE guifg=#9fc28a guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=102 ctermbg=NONE cterm=NONE guifg=#9a807c guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d1a796 guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff80e1 guibg=NONE gui=NONE
hi rubyInclude ctermfg=108 ctermbg=NONE cterm=NONE guifg=#949c8b guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d1a796 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=72 ctermbg=NONE cterm=NONE guifg=#62b68a guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=72 ctermbg=NONE cterm=NONE guifg=#62b68a guibg=NONE gui=NONE
hi rubyEscape ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab641b guibg=NONE gui=NONE
hi rubyControl ctermfg=108 ctermbg=NONE cterm=NONE guifg=#949c8b guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d1a796 guibg=NONE gui=NONE
hi rubyOperator ctermfg=108 ctermbg=NONE cterm=NONE guifg=#949c8b guibg=NONE gui=NONE
hi rubyException ctermfg=108 ctermbg=NONE cterm=NONE guifg=#949c8b guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff80e1 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=144 ctermbg=NONE cterm=NONE guifg=#9fc28a guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=101 ctermbg=NONE cterm=NONE guifg=#85873a guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=101 ctermbg=NONE cterm=NONE guifg=#85873a guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=101 ctermbg=NONE cterm=NONE guifg=#85873a guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=101 ctermbg=NONE cterm=NONE guifg=#85873a guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=59 ctermbg=NONE cterm=NONE guifg=#706d5b guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=101 ctermbg=NONE cterm=NONE guifg=#85873a guibg=NONE gui=NONE
hi htmlTag ctermfg=145 ctermbg=NONE cterm=NONE guifg=#babd9c guibg=NONE gui=NONE
hi htmlEndTag ctermfg=145 ctermbg=NONE cterm=NONE guifg=#babd9c guibg=NONE gui=NONE
hi htmlTagName ctermfg=145 ctermbg=NONE cterm=NONE guifg=#babd9c guibg=NONE gui=NONE
hi htmlArg ctermfg=145 ctermbg=NONE cterm=NONE guifg=#babd9c guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab641b guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=228 ctermbg=NONE cterm=NONE guifg=#ffee80 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=101 ctermbg=NONE cterm=NONE guifg=#85873a guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=94 ctermbg=NONE cterm=NONE guifg=#84730b guibg=NONE gui=NONE
hi yamlAnchor ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d1a796 guibg=NONE gui=NONE
hi yamlAlias ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d1a796 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=102 ctermbg=NONE cterm=NONE guifg=#9a807c guibg=NONE gui=NONE
hi cssURL ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d1a796 guibg=NONE gui=NONE
hi cssFunctionName ctermfg=101 ctermbg=NONE cterm=NONE guifg=#85873a guibg=NONE gui=NONE
hi cssColor ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab641b guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ba6912 guibg=NONE gui=NONE
hi cssClassName ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ba6912 guibg=NONE gui=NONE
hi cssValueLength ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab641b guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=137 ctermbg=NONE cterm=NONE guifg=#c27e66 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE