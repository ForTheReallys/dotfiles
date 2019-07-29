if has("browse")
	call browse#CreateMappings()
	delfunction browse#CreateMappings
endif

if has("windows")
	call windows#CreateMappings()
	delfunction windows#CreateMappings
endif

if has("xterm_clipboard")
	call X#CreateClipboardMappings()
	delfunction X#CreateClipboardMappings
endif

if has("folding")
	call folds#CreateFoldingMappings()
	delfunction folds#CreateFoldingMappings
endif

if has("mksession")
	call sessions#CreateMappings()
	delfunction sessions#CreateMappings
endif

if has("terminal")
	call terminal#CreateMappings()
	delfunction terminal#CreateMappings
endif

if has("quickfix")
	nnoremap <Up> :cprevious<CR>
	nnoremap <Down> :cnext<CR>
	nnoremap <S-Up> :lprevious<CR>
	nnoremap <S-Down> :lnext<CR>
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

"keep searches in the middle of the screen
nnoremap n nzz
nnoremap N Nzz

"select the rest of the line but not the newline
nnoremap vv v$h
nnoremap yy y$

"remove all unnecessary white space
nnoremap ss :s/\s*$//g<CR>

"deletes the contents of the line(s) but not the line(s) itself
nnoremap <C-d> 0D

"create a new line above or below cursor without leaving normal mode
nnoremap go mzo<Esc>`z
nnoremap gO mzO<Esc>`z

"go to old cursor position when jumping to marks
nnoremap ' `

call DiffRemap('n', '<C-n>', '\<Nop>', ']c')
call DiffRemap('n', '<C-p>', '\<Nop>', '[c')

"sometimes I have a snippet of text that I want to put on the next
"or previous line but have to create the line first... so I wrote this
"so now I don't have to
nnoremap <silent> gp :<C-u>call PrintLine("p")<CR>
nnoremap <silent> gP :<C-u>call PrintLine("P")<CR>

"like page up and page down but move the cursor
"to the top or bottom before acting like those keys
nnoremap <silent> <expr> H ForTheReallys#UP()
nnoremap <silent> <expr> L ForTheReallys#DOWN()

nnoremap <C-f> :bnext<CR>
nnoremap <C-b> :bprevious<CR>
