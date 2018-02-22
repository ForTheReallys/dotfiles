" Vim color file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2001 Jul 23

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg=light

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

" Remove all existing highlighting and set the defaults.
hi clear

let outside = 234
highlight Comment cterm=italic
highlight Spellbad term=standout ctermfg=15 ctermbg=1 guifg=White guibg=Red
highlight CursorLine cterm=NONE ctermbg=232
highlight Visual term=reverse cterm=NONE ctermbg=17
highlight Pmenu cterm=NONE ctermfg=15 ctermbg=8
highlight PmenuSel cterm=bold ctermbg=234 ctermfg=15
highlight LineNr ctermfg=25
highlight Normal ctermbg=233
highlight CursorLineNr ctermfg=11
exec "highlight CursorLine cterm=NONE ctermbg=" . outside
exec "highlight EndOfBuffer ctermfg=blue ctermbg=" . outside

highlight! link ColorColumn CursorLine
highlight! link Search Visual

let &l:colorcolumn = '+'.join(range(0, 254), ',+')
let colors_name = "textwidth"

" vim: sw=2
