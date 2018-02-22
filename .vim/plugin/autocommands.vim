if has("autocmd")
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
	    autocmd User UltiSnipsEnterFirstSnippet call autocomplete#setup_mappings()
	    autocmd User UltiSnipsExitLastSnippet call autocomplete#teardown_mappings()
	augroup end

	if has("insert_expand") && exists("v:completed_item")
		augroup Completion
		    autocmd!
		    autocmd CompleteDone echoerr v:completed_item
		augroup end
	endif

	augroup DirectoryFT
	    autocmd!
	    autocmd BufRead,BufNewFile ~/BC/Engl/* setfiletype text
	    autocmd BufRead,BufNewFile ~/BC/Theology/* setfiletype text
	    autocmd BufRead,BufNewFile ~/Clones/cmus/*,~/Clones/tmux/* setlocal noexpandtab
	augroup end
endif
