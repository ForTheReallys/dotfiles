function s:PreLoad(eventName)
	let plugin = matchstr(a:eventName, 'PreLoad-\zs.*')
	let plugin = substitute(plugin, "-", "_", "g")
	if strlen(plugin)
		execute printf("silent! call plugins#%s#PreLoad()", plugin)
	endif
endfunction

function s:PostLoad(eventName)
	let plugin = matchstr(a:eventName, 'PostLoad-\zs.*')
	let plugin = substitute(plugin, "-", "_", "g")
	if strlen(plugin)
		execute printf("silent! call plugins#%s#PostLoad()", plugin)
	endif
endfunction

augroup Plugins
	autocmd!
	autocmd User * call s:PreLoad(expand("<afile>"))
	autocmd User * call s:PostLoad(expand("<afile>"))
augroup end

augroup CmdLine
	autocmd!
	autocmd CmdWinEnter * nnoremap <buffer> <CR> <CR>
	autocmd CmdWinEnter * inoremap <buffer> <CR> <CR>
	autocmd CmdWinEnter * inoremap <buffer> <BS> <BS>
	autocmd CmdWinEnter * inoremap <buffer> <silent> <Esc><Esc> <Esc>:q<CR>
	autocmd CmdWinEnter * nnoremap <buffer> <silent> <Esc><Esc> :q<CR>
	autocmd CmdWinEnter * startinsert
augroup end

augroup Ultisnips
	autocmd!
	"autocmd User UltiSnipsEnterFirstSnippet call autocomplete#setup_mappings()
	"autocmd User UltiSnipsExitLastSnippet call autocomplete#teardown_mappings()
augroup end

augroup DirectoryFT
	autocmd!
	autocmd BufRead,BufNewFile ~/BC/Engl/* setfiletype text
	autocmd BufRead,BufNewFile ~/BC/Theology/* setfiletype text
	autocmd BufRead,BufNewFile ~/Clones/cmus/*,~/Clones/tmux/* setlocal noexpandtab
augroup end
