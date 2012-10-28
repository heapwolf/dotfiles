" Vim color file
" Converted from Textmate theme idleFingers using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "idleFingers"

hi Cursor ctermfg=236 ctermbg=118 cterm=NONE guifg=#323232 guibg=#91ff00 gui=NONE
hi Visual ctermfg=NONE ctermbg=60 cterm=NONE guifg=NONE guibg=#555e74 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#474747 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#474747 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#474747 gui=NONE
hi LineNr ctermfg=246 ctermbg=238 cterm=NONE guifg=#999999 guibg=#474747 gui=NONE
hi VertSplit ctermfg=242 ctermbg=242 cterm=NONE guifg=#6d6d6d guibg=#6d6d6d gui=NONE
hi MatchParen ctermfg=173 ctermbg=NONE cterm=underline guifg=#cc7833 guibg=NONE gui=underline
hi StatusLine ctermfg=15 ctermbg=242 cterm=bold guifg=#ffffff guibg=#6d6d6d gui=bold
hi StatusLineNC ctermfg=15 ctermbg=242 cterm=NONE guifg=#ffffff guibg=#6d6d6d gui=NONE
hi Pmenu ctermfg=221 ctermbg=NONE cterm=NONE guifg=#ffc66d guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=60 cterm=NONE guifg=NONE guibg=#555e74 gui=NONE
hi IncSearch ctermfg=236 ctermbg=143 cterm=NONE guifg=#323232 guibg=#a5c261 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi Folded ctermfg=137 ctermbg=236 cterm=NONE guifg=#bc9458 guibg=#323232 gui=NONE

hi Normal ctermfg=15 ctermbg=236 cterm=NONE guifg=#ffffff guibg=#323232 gui=NONE
hi Boolean ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi Character ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi Comment ctermfg=137 ctermbg=NONE cterm=NONE guifg=#bc9458 guibg=NONE gui=italic
hi Conditional ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi Constant ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi Define ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi DiffAdd ctermfg=15 ctermbg=64 cterm=bold guifg=#ffffff guibg=#48850f gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8d0a0a guibg=NONE gui=NONE
hi DiffChange ctermfg=15 ctermbg=23 cterm=NONE guifg=#ffffff guibg=#293e5d gui=NONE
hi DiffText ctermfg=15 ctermbg=24 cterm=bold guifg=#ffffff guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=15 ctermbg=196 cterm=NONE guifg=#ffffff guibg=#ff0000 gui=NONE
hi WarningMsg ctermfg=15 ctermbg=196 cterm=NONE guifg=#ffffff guibg=#ff0000 gui=NONE
hi Float ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi Function ctermfg=221 ctermbg=NONE cterm=NONE guifg=#ffc66d guibg=NONE gui=NONE
hi Identifier ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Keyword ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi Label ctermfg=143 ctermbg=NONE cterm=NONE guifg=#a5c261 guibg=NONE gui=NONE
hi NonText ctermfg=242 ctermbg=237 cterm=NONE guifg=#686868 guibg=#3c3c3c gui=NONE
hi Number ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi Operator ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi PreProc ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi Special ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi SpecialKey ctermfg=242 ctermbg=238 cterm=NONE guifg=#686868 guibg=#474747 gui=NONE
hi Statement ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi StorageClass ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi String ctermfg=143 ctermbg=NONE cterm=NONE guifg=#a5c261 guibg=NONE gui=NONE
hi Tag ctermfg=221 ctermbg=NONE cterm=NONE guifg=#ffc66d guibg=NONE gui=NONE
hi Title ctermfg=15 ctermbg=NONE cterm=bold guifg=#ffffff guibg=NONE gui=bold
hi Todo ctermfg=137 ctermbg=NONE cterm=inverse,bold guifg=#bc9458 guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=221 ctermbg=NONE cterm=NONE guifg=#ffc66d guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi rubyFunction ctermfg=221 ctermbg=NONE cterm=NONE guifg=#ffc66d guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi rubyConstant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=143 ctermbg=NONE cterm=NONE guifg=#a5c261 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInclude ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=153 ctermbg=NONE cterm=NONE guifg=#b7dff8 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=185 ctermbg=NONE cterm=NONE guifg=#cccc33 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=185 ctermbg=NONE cterm=NONE guifg=#cccc33 guibg=NONE gui=NONE
hi rubyEscape ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi rubyControl ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi rubyException ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=185 ctermbg=NONE cterm=NONE guifg=#cccc33 guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=130 ctermbg=NONE cterm=NONE guifg=#b83426 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=130 ctermbg=NONE cterm=NONE guifg=#b83426 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=130 ctermbg=NONE cterm=NONE guifg=#b83426 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=130 ctermbg=NONE cterm=NONE guifg=#b83426 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=137 ctermbg=NONE cterm=NONE guifg=#bc9458 guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=130 ctermbg=NONE cterm=NONE guifg=#b83426 guibg=NONE gui=NONE
hi htmlTag ctermfg=223 ctermbg=NONE cterm=NONE guifg=#ffe5bb guibg=NONE gui=NONE
hi htmlEndTag ctermfg=223 ctermbg=NONE cterm=NONE guifg=#ffe5bb guibg=NONE gui=NONE
hi htmlTagName ctermfg=223 ctermbg=NONE cterm=NONE guifg=#ffe5bb guibg=NONE gui=NONE
hi htmlArg ctermfg=223 ctermbg=NONE cterm=NONE guifg=#ffe5bb guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=130 ctermbg=NONE cterm=NONE guifg=#b83426 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=221 ctermbg=NONE cterm=NONE guifg=#ffc66d guibg=NONE gui=NONE
hi yamlAnchor ctermfg=153 ctermbg=NONE cterm=NONE guifg=#b7dff8 guibg=NONE gui=NONE
hi yamlAlias ctermfg=153 ctermbg=NONE cterm=NONE guifg=#b7dff8 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=143 ctermbg=NONE cterm=NONE guifg=#a5c261 guibg=NONE gui=NONE
hi cssURL ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName ctermfg=130 ctermbg=NONE cterm=NONE guifg=#b83426 guibg=NONE gui=NONE
hi cssColor ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssClassName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssValueLength ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE