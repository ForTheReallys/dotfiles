function plugins#vimspector#PreLoad()
	let g:vimspector_enable_mappings='HUMAN'
endfunction

function plugins#vimspector#PostLoad()
	nmap <Leader>db <Plug>VimspectorToggleBreakpoint
	nmap <Leader>dc <Plug>VimspectorContinue
	nmap <Leader>dr <Plug>VimspectorRunToCursor
	nmap <Leader>di <Plug>VimspectorStepInto
	nmap <Leader>do <Plug>VimspectorStepOver
	nmap <Leader>dO <Plug>VimspectorStepOut
	nmap <Leader>de <Plug>VimspectorBalloonEval
	nnoremap <Leader>dq :VimspectorReset<CR>
	xmap <Leader>de <Plug>VimspectorBalloonEval
endfunction
