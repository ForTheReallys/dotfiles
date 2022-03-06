function! plugins#vim_lsp#PreLoad()
	" autocmd User lsp_setup call lsp#register_server({
	" 			\ 'name': 'pyls',
	" 			\ 'cmd': {server_info->['pyls']},
	" 			\ 'allowlist': ['python'],
	" 			\ })
endfunction

function! RegisterServers()
endfunction

function plugins#vim_lsp#PostLoad()
	call lsp#enable()
	set omnifunc=lsp#complete
	set tagfunc=lsp#tagfunc
	nmap gd <plug>(lsp-definition)
	nmap <F12> <plug>(lsp-definition)

	nmap gs <plug>(lsp-document-symbol-search)
	nmap gS <plug>(lsp-workspace-symbol-search)
	nmap gr <plug>(lsp-references)
	nmap gt <plug>(lsp-type-definition)
	nmap <leader>r <plug>(lsp-rename)
	nmap [g <plug>(lsp-previous-diagnostic)
	nmap ]g <plug>(lsp-next-diagnostic)
	nmap <Leader>K <plug>(lsp-hover)
	nmap <Leader>? <plug>(lsp-status)
	nnoremap <expr><c-f> lsp#scroll(+4)
	nnoremap <expr><c-d> lsp#scroll(-4)
	call RegisterServers()
endfunction
