if has("cmdline_hist") && has("vertsplit")
	nnoremap : q:
endif

if has("browse")
	nnoremap <Leader>o :<C-u>browse set<CR>
endif

if has("windows")
	nnoremap gf<Tab>     :<C-u>execute "tabnew ".expand('<cfile>')<CR>
	nnoremap gfn         :<C-u>execute "split ".expand('<cfile>')<CR>
	nnoremap gfe         :<C-u>execute "edit ".expand('<cfile>')<CR>
	if has("vertsplit")
		nnoremap gfv :<C-u>execute "vsplit ".expand('<cfile>')<CR>
	endif
endif

if has("xterm_clipboard")
	"yanking and pasting from clipboard
	nmap <Leader>y "+y
	nmap <Leader>Y "+Y
	nmap <Leader>p "+p
	nmap <Leader>P "+P
endif

if has("folding")
	"open and close folds
	nnoremap <CR> za
endif

if has("mksession")
	nnoremap QQ :<C-u>mksession! \| wqall<CR>
endif

nnoremap cc C
nnoremap <Leader>fd :<C-u>filetype detect<CR>

"capitalize first letter
nnoremap <Space> m"viwb~`"
nnoremap <Leader><Space> m"viWB~`"

nnoremap + <C-a>
nnoremap - <C-x>

"navigate wrapped text
nnoremap <silent> j gj
nnoremap <silent> k gk

"sometimes I have a snippet of text that I want to put on the next
"or previous line but have to create the line first... so I wrote this
"so now I don't have to
nnoremap <silent> gp :<C-u>call PrintLine("p")<CR>
nnoremap <silent> gP :<C-u>call PrintLine("P")<CR>

"keep searches in the middle of the screen
nnoremap n nzz
nnoremap N Nzz

"select the rest of the line but not the newline
nnoremap vv v$h
nnoremap yy y$

"like page up and page down but move the cursor
"to the top or bottom before acting like those keys
nnoremap <silent> <expr> H ForTheReallys#UP()
nnoremap <silent> <expr> L ForTheReallys#DOWN()

"remove all unnecessary white space
nnoremap ss :s/\s*$//g<CR>

"deletes the contents of the line(s) but not the line(s) itself
nnoremap <C-d> 0D

"create a new line above or below cursor without leaving normal mode
nnoremap go mzo<Esc>`z
nnoremap gO mzO<Esc>`z

"go to old cursor position when jumping to marks
nnoremap ' `
