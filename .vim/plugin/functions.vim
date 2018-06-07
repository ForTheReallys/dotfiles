"keeps the indent when we print
"key is just p or P
function! KeepIndent(key)
    if exists("g:paste_indent") && g:paste_indent == 0
        execute "normal! ".key
    endif

    "get the right register
    let buffer = getreg(v:register)

    "lines in the buffer
    let newlines = 0

    "count the lines in the copy buffer
    for i in range(strlen(buffer))
        if buffer[i] == "\n"
            let l:newlines += 1
        endif
    endfor

    let total_lines = l:newlines * v:count1

    "print the right register and indent that many lines
    let indent = 0

    if l:total_lines
        let indent = l:total_lines
    elseif getline(".") =~ '^\s*$' && !l:newlines
        let indent = 1
    endif

    execute "normal! \"".v:register.v:count1.a:key

    if l:indent
        execute "normal! ".total_lines."=="
    endif
endfunction

function! PrintLine(key)
    let buffer = getreg(v:register)
    let newlines = 0

    for i in range(strlen(buffer))
        if buffer[i] == "\n"
            let l:newlines += 1
        endif
    endfor

    if a:key ==# "p"
        let oh = "o"
    elseif a:key ==# "P"
        let oh = "O"
    endif

    for i in range(v:count1)
        execute "normal! ".oh."\<Esc>"
        call KeepIndent(a:key)
    endfor
endfunction

"TODO fix this... in case that wasn't obvious by the TODO
function! VisualToggleFolds()
    let l:top = foldlevel("'<")
    let l:bottom = foldlevel("'>")

    if l:top < 1 && l:bottom < 1
        call feedkeys("zf", "t")
    else
        call feedkeys("za", "t")
    endif

    "end in normal mode
    call feedkeys("\<Esc>", "t")
endfunction

" TODO
function! Tab()
	return "\<Tab>"
endfunction

function! TabOrSpace()
	let l:col = getcurpos()[2]
	let l:str = getline(".")
	let l:regex = "^\s{" . col . "}"
	if l:str =~ l:regex
		return "\<Tab>"
	endif

	set expandtab
	call feedkeys("\<Tab>", "n")
	set noexpandtab
	return ""
endfunction
