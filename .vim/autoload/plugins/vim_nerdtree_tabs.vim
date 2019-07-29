"Toggle NERDTree
"puts the nerdtree above the tagbar if there is one
function! s:ToggleNT()
	"if it is open
	if s:IsNTopen()
		NERDTreeTabsToggle "close it
		return
	endif

	"if it's not open and TagBar is not
	if !s:IsTBOpen()
		NERDTreeTabsToggle
	else
		"first close the tagbar
		TagbarClose
		"Turn on NERD_tree
		NERDTreeTabsToggle
		call s:ToggleTB()
	endif
endfunction

function! s:ToggleTB()
	if s:IsTBOpen()
		TagbarClose
		return
	endif

	if s:IsNTopen()
		"go all the way to the left
		100 wincmd h
		"open the tag bar underneath half way
		let g:tagbar_vertical = winheight("%") / 10 * 5
		TagbarOpen

		"reset everything
		let g:tagbar_vertical = 0
	else
		let g:tagbar_left = 1
		let g:tagbar_width = 31 "lenth of nt
		TagbarOpen
		let g:tagbar_left = 0
		let g:tagbar_width = 30
	endif
endfunction

function! s:IsTBOpen()
	if exists('t:tagbar_buf_name')
		for window in tabpagebuflist()
			if bufname(window) ==# t:tagbar_buf_name
				return 1
			endif
		endfor
	endif
	return 0
endfunction

function! s:IsNTopen()
	if exists('t:NERDTreeBufName')
		for window in tabpagebuflist()
			if bufname(window) ==# t:NERDTreeBufName
				return 1
			endif
		endfor
	endif
	return 0
endfunction

function plugins#vim_nerdtree_tabs#PreLoad()
	let g:tagbar_vertical = 0
	let g:tagbar_left = 0
	let g:nerdtree_tabs_open_on_console_startup=0
	let g:nerdtree_tabs_open_on_gui_startup=0
	let g:nerdtree_tabs_focus_on_files = 1

	augroup NTandTB
		autocmd!
		"autocmd VimEnter * TagbarTogglePause "make tagbar switch when we look at other files
		autocmd BufEnter NERD_tree_* set filetype=nerdtree
	augroup end
endfunction

function plugins#vim_nerdtree_tabs#PostLoad()
	nnoremap <expr> <Leader><Leader>t ToggleTB()<CR>
	"do we want to switch tagbars when we switch buffers
	nnoremap <Leader>tp :<C-u>TagbarTogglePause<CR>
	nnoremap <expr> <Leader>nt ToggleNT()
	highlight link TagbarHighlight PmenuSel
endfunction
