"to be moved later
nnoremap <Leader>R :redraw!<CR>

nnoremap s <Nop>
nnoremap sl :set list!<CR>:set list?<CR>
nnoremap sw :set wrap!<CR>:set wrap?<CR>
nnoremap sr :set relativenumber!<CR>:set relativenumber?<CR>
nnoremap sn :set number!<CR>:set number?<CR>
nnoremap sc :set ignorecase!<CR>:set ignorecase?<CR>
nnoremap sa :set autoread!<CR>:set autoread?<CR>
nnoremap se :set expandtab!<CR>:set expandtab?<CR>

nnoremap <silent> sf :<C-u>call ForTheReallys#TogglePHPhtml()<CR>

"colorscheme stuff
nnoremap \s :colorscheme solarized<CR>
nnoremap \d :colorscheme default<CR>
nnoremap <expr> \\  ForTheReallys#ToggleColorschemes(1)
nnoremap <expr> \|\| ForTheReallys#ToggleColorschemes(0)
