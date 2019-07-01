function terminal#CreateMappings()
	if has("channel")
		command! -nargs=* Make call terminal#Make(<f-args>)
	endif
endfunction

function! terminal#Callback(job, status)
	let l:channel = job_getchannel(a:job)
	let l:buf = ch_getbufnr(l:channel, "out")

	execute "cgetbuffer " . l:buf
	copen
	wincmd p
endfunction

function! terminal#Make(...)
	let l:cmd = &makeprg
	if a:0 > 0
		let l:cmd = join(a:000, " ")
	endif

	let l:options = { "hidden": 1, "norestore": 1, "term_cols": 100000, "exit_cb": "terminal#Callback" }
	call term_start(l:cmd, l:options)
endfunction
