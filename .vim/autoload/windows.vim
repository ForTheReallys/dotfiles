function! windows#CreateMappings()
	"normal
	nnoremap gf<Tab>     :<C-u>execute "tabnew ".expand('<cfile>')<CR>
	nnoremap gfn         :<C-u>execute "split ".expand('<cfile>')<CR>
	nnoremap gfe         :<C-u>execute "edit ".expand('<cfile>')<CR>

	"some tab stuff
	nnoremap <Leader><Tab> :tabnew<CR>
	nnoremap <silent> <Left> gT
	nnoremap <silent> <Right> gt

	"moving between windows
	nnoremap gh <C-w>h
	nnoremap gk <C-w>k
	nnoremap gj <C-w>j
	nnoremap gl <C-w>l
	"swapping windows
	nnoremap gH <C-w>H
	nnoremap gJ <C-w>J
	nnoremap gK <C-w>K
	nnoremap gL <C-w>L

	nnoremap <Leader>n <C-w>n

	nnoremap <C-S-k> <C-w>+
	nnoremap <C-S-j> <C-w>-
	nnoremap <C-S-h> <C-w>>
	nnoremap <C-S-l> <C-w><

	if has("vertsplit")
		nnoremap gfv :<C-u>execute "vsplit ".expand('<cfile>')<CR>
		nnoremap <Leader>v <C-w>v
		if has("cmdline_hist")
			nnoremap : q:
			xnoremap : q:
		endif
	endif
endfunction
