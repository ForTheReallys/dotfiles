function plugins#NERDCommenter#PostLoad()
	"if I don't do this, dd stalls for some reason
	xmap <Leader>dc <plug>NERDCommenterUncomment
	nmap <Leader>dc <plug>NERDCommenterUncomment

	map gcc <plug>NERDCommenterToggle
	map gcm <plug>NERDCommenterMinimal
	map gci <plug>NERDCommenterInvert
	map gca <plug>NERDCommenterAppend
	map gcb <plug>NERDCommenterAlignBoth
	map gcs <plug>NERDCommenterSexy

endfunction

function plugins#NERDCommenter#PostLoad()
	let g:NERDCustomDelimiters = {
				\ 'conf':     { 'left': '# ', 'leftAlt': '#'},
				\ 'snippets': { 'left': '# ', 'leftAlt': '#'},
				\}
endfunction
