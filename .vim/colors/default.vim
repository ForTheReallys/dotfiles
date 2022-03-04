hi clear Normal
set bg=light

if has("termguicolors")
	set notermguicolors
endif

if exists("syntax_on")
	syntax reset
endif

hi clear

highlight Normal              guibg=Black guifg=White
highlight SpecialKey          term=bold ctermfg=4 guifg=Blue
highlight NonText             term=bold ctermfg=4 guifg=Blue
highlight Directory           term=bold ctermfg=4 guifg=Blue
highlight ErrorMsg            term=standout ctermfg=15 ctermbg=1 guifg=White guibg=Red
highlight Search              term=reverse ctermbg=4 ctermfg=7 cterm=None
highlight IncSearch           term=reverse cterm=reverse gui=reverse
highlight MoreMsg             term=bold ctermfg=2 gui=bold guifg=SeaGreen
highlight ModeMsg             term=bold cterm=bold gui=bold
highlight LineNr              term=None ctermfg=4 guifg=Blue
highlight CursorLineNr        term=None cterm=None ctermfg=11 gui=bold guifg=Brown
highlight Question            term=standout ctermfg=2 gui=bold guifg=SeaGreen
highlight StatusLine          term=bold,reverse cterm=bold,reverse gui=bold,reverse
highlight StatusLineNC        term=reverse cterm=reverse gui=reverse
highlight VertSplit           term=None ctermbg=white gui=None guibg=White
highlight Title               term=bold ctermfg=5 gui=bold guifg=Magenta
highlight Visual              term=reverse cterm=None ctermbg=4 ctermfg=0 guibg=#00005f
highlight VisualNOS           term=bold,underline cterm=bold,underline gui=bold,underline
highlight WarningMsg          term=standout ctermfg=1 guifg=Red
highlight WildMenu            term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
highlight Folded              term=standout ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=LightGrey
highlight FoldColumn          term=standout ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=Grey
highlight DiffAdd             term=bold ctermbg=81 guibg=LightBlue
highlight DiffChange          term=bold ctermbg=225 guibg=LightMagenta
highlight DiffDelete          term=bold ctermfg=12 ctermbg=159 gui=bold guifg=Blue guibg=LightCyan
highlight DiffText            term=reverse cterm=bold ctermbg=9 gui=bold guibg=Red
highlight SignColumn          term=standout ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=Grey
highlight Conceal             ctermfg=7 ctermbg=242 guifg=LightGrey guibg=DarkGrey
highlight SpellBad            term=standout ctermfg=15 ctermbg=1 gui=undercurl guifg=White guibg=Red guisp=Red
highlight SpellCap            term=reverse ctermbg=81 gui=undercurl guisp=Blue
highlight SpellRare           term=reverse ctermbg=225 gui=undercurl guisp=Magenta
highlight SpellLocal          term=underline ctermbg=14 gui=undercurl guisp=DarkCyan
highlight Pmenu               cterm=None ctermfg=15 ctermbg=8 guibg=LightMagenta
highlight PmenuSel            cterm=bold ctermfg=15 ctermbg=234 guibg=Grey
highlight PmenuSbar           ctermbg=248 guibg=Grey
highlight PmenuThumb          ctermbg=0 guibg=Black
highlight TabLine             term=underline cterm=underline ctermfg=0 ctermbg=7 gui=underline guibg=LightGrey
highlight TabLineSel          term=bold cterm=bold gui=bold
highlight TabLineFill         term=reverse cterm=reverse gui=reverse
highlight CursorColumn        term=reverse ctermbg=7 guibg=Grey90
highlight CursorLine          term=underline cterm=None ctermbg=234 guibg=Grey90
highlight ColorColumn         term=reverse ctermbg=224 guibg=LightRed
highlight StatusLineTerm      term=bold,reverse cterm=bold ctermfg=15 ctermbg=2 gui=bold guifg=bg guibg=DarkGreen
highlight StatusLineTermNC    term=reverse ctermfg=15 ctermbg=2 guifg=bg guibg=DarkGreen
highlight Cursor              guifg=bg guibg=fg
highlight lCursor             guifg=bg guibg=fg
highlight MatchParen          term=reverse ctermbg=14 guibg=Cyan
highlight ToolbarLine         term=underline ctermbg=7 guibg=LightGrey
highlight ToolbarButton       cterm=bold ctermfg=15 ctermbg=242 gui=bold guifg=White guibg=Grey40
highlight Error               term=reverse ctermfg=15 ctermbg=9 guifg=White guibg=Red
highlight Todo                term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow

highlight link EndOfBuffer NonText
highlight link QuickFixLine Search
highlight link YcmWarningSection Todo
highlight link YcmErrorSection Error

" now my configuration
source ~/.vim/colors/all.vim

let g:colors_name = "default"
