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
