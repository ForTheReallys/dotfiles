function! windows#CreateMappings()
	"normal
	nnoremap gf<Tab>     :<C-u>execute "tabnew ".expand('<cfile>')<CR>
	nnoremap gfn         :<C-u>execute "split ".expand('<cfile>')<CR>
	nnoremap gfe         :<C-u>execute "edit ".expand('<cfile>')<CR>

	"some tab stuff
	nnoremap <Leader><Tab> :tabnew
	nnoremap <silent> <S-Tab> gT
	nnoremap <silent> <Tab> gt

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
	"open new windows without worrying about the names
	nnoremap <Leader>n <C-w>n
	"give me a chance to enter a name
	nnoremap <Leader>N :split 

	nnoremap <C-S-k> <C-w>+
	nnoremap <C-S-j> <C-w>-
	nnoremap <C-S-h> <C-w>>
	nnoremap <C-S-l> <C-w><
endfunction

function! windows#CreateVertMappings()
	nnoremap gfv :<C-u>execute "vsplit ".expand('<cfile>')<CR>
	nnoremap <Leader>V :vsplit 
	nnoremap <Leader>v <C-w>v
endfunction

function! windows#CreateCmdWinMappings()
	nnoremap : q:
	xnoremap : q:
endfunction
