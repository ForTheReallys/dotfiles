function plugins#asyncomplete_lsp#PostLoad()
	augroup asyncomplteSources
		autocmd!
		autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
					\ 'name': 'ultisnips',
					\ 'allowlist': ['*'],
					\ 'completor': function('asyncomplete#sources#ultisnips#completor'),
					\ }))
	augroup end
endfunction
