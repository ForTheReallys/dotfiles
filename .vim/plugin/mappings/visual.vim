"for visual blocks
xnoremap + g<C-a>
xnoremap - g<C-x>

"remove all unnecessary white space
xnoremap ss :s/\s*$//g<CR>

"deletes the contents of the line(s) but not the line(s) itself
xnoremap <C-d> :s/[\s\S]*//g<CR>

"keep indented text highlighted
xnoremap < <gv
xnoremap > >gv

"go to old cursor position when jumping to marks
xnoremap ' `

"visual-star
xnoremap * y/<C-r>"\><Home>\<<End><CR>
xnoremap # y?<C-r>"\><Home>\<<End><CR>
xnoremap g* y/<C-r>"<CR>
xnoremap g# y?<C-r>"<CR>

" Reversing lines
xnoremap <silent> R :call ForTheReallys#ReverseLines()<CR>

" Folds with Enter
xnoremap <expr> <CR> VisualToggleFolds()

"like page up and page down but move the cursor
"to the top or bottom before acting like those keys
xnoremap <silent> <expr> H ForTheReallys#UP()
xnoremap <silent> <expr> L ForTheReallys#DOWN()
