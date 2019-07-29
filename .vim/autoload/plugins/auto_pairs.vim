function! plugins#auto_pairs#PreLoad()
	let g:AutoPairsShortcutFastWrap   = "<C-e>"
	let g:AutoPairsShortcutBackInsert = "<C-b>"
endfunction

function! plugins#auto_pairs#PostLoad()
	call AutoPairsInit()
endfunction
