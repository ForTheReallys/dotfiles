function plugins#UltiSnips#PreLoad()
	let g:UltiSnipsSnippetDirectories  = [$HOME."/.vim/Ultisnips", $HOME."/.private/UltiSnips/"]
	let g:UltiSnipsEditSplit           = "vertical"
	let g:UltiSnipsExpandTrigger       = "<Tab>"
	let g:UltiSnipsJumpForwardTrigger  = "<Tab>"
	let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"
endfunction

function plugins#UltiSnips#PostLoad()
	nnoremap <Leader>us :<C-u>UltiSnipsEdit<CR>
endfunction
