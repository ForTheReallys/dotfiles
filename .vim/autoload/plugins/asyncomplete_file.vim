function plugins#asyncomplete_file#PostLoad()
	augroup asyncompleteSources
		au!
		au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
		    \ 'name': 'file',
		    \ 'allowlist': ['*'],
		    \ 'priority': 10,
		    \ 'completor': function('asyncomplete#sources#file#completor')
		    \ }))
	augroup end
endfunction
