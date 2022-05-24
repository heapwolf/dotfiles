# xyz theme

evaluate-commands %sh{
    gray="rgb:4c566a"
    red="rgb:4c566a"
    green="rgb:a4cc35"
    yellow="rgb:ffd24a"
    blue="rgb:66bfff"
    purple="rgb:fffcff"
    aqua="rgb:00d9ff"
    orange="rgb:a4cc35"
    bg="rgb:2E3440"
    bg_alpha="rgba:2E3440a0"
    bg1="rgb:2E3440"
    bg2="rgb:353a46"
    bg3="rgb:a29da3"
    bg4="rgb:c1bcc2"
    fg="rgb:7f8994"
    fg_alpha="rgba:ebdbb2a0"
    fg0="rgb:fbf1c7"
    fg2="rgb:d5c4a1"
    fg3="rgb:bdae93"
    fg4="rgb:a89984"
    echo "
        # Code highlighting
        face global value         ${purple}
        face global type          ${yellow}
        face global variable      ${blue}
        face global module        ${green}
        face global function      ${fg}
        face global string        ${green}
        face global keyword       ${red}
        face global operator      ${fg}
        face global attribute     ${orange}
        face global comment       ${gray}+i
        face global documentation comment
        face global meta          ${aqua}
        face global builtin       ${fg}+b
        # Markdown highlighting
        face global title     ${green}+b
        face global header    ${orange}
        face global mono      ${fg4}
        face global block     ${aqua}
        face global link      ${blue}+u
        face global bullet    ${yellow}
        face global list      ${fg}
        face global Default            ${fg},${bg}
        face global PrimarySelection   ${fg_alpha},${blue}+g
        face global SecondarySelection ${bg_alpha},${blue}+g
        face global PrimaryCursor      ${bg},${fg}+fg
        face global SecondaryCursor    ${bg},${bg4}+fg
        face global PrimaryCursorEol   ${bg},${fg4}+fg
        face global SecondaryCursorEol ${bg},${bg2}+fg
        face global LineNumbers        ${bg4}
        face global LineNumberCursor   ${yellow},${bg1}
        face global LineNumbersWrapped ${bg1}
        face global MenuForeground     ${bg2},${blue}
        face global MenuBackground     ${fg},${bg2}
        face global MenuInfo           ${bg}
        face global Information        ${bg},${fg}
        face global Error              ${bg},${red}
        face global DiagnosticError    ${red}
        face global DiagnosticWarning  ${yellow}
        face global StatusLine         ${fg},${bg}
        face global StatusLineMode     ${yellow}+b
        face global StatusLineInfo     ${purple}
        face global StatusLineValue    ${red}
        face global StatusCursor       ${bg},${fg}
        face global Prompt             ${yellow}
        face global MatchingChar       ${fg},${bg3}+b
        face global BufferPadding      ${bg2},${bg}
        face global Whitespace         ${bg2}+f
    "
}
