function plugins#asyncomplete#PreLoad()
	let g:asyncomplete_auto_popup = 1
endfunction

function plugins#asyncomplete#PostLoad()
	augroup asyncomplteCmdLine
		autocmd CmdWinEnter * let g:asyncomplete_auto_popup = 0
		autocmd CmdWinLeave * let g:asyncomplete_auto_popup = 1
	augroup end
endfunction
