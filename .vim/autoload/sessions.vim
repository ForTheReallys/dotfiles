function! sessions#CreateMappings()
	nnoremap QQ :<C-u>mksession! \| wqall<CR>
endfunction
