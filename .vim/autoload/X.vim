function! X#CreateClipboardMappings()
	"yank and paste to system clipboard
	nmap <Leader>d "+d
	nmap <Leader>y "+y
	nmap <Leader>Y "+Y
	nmap <Leader>p "+p
	nmap <Leader>P "+P

	xmap <Leader>d "+d
	xmap <Leader>y "+y
	xmap <Leader>Y "+Y
	xmap <Leader>p "+p
	xmap <Leader>P "+P
endfunction
