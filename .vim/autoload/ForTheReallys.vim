let s:colorschemes = ["default", "solarized"]
let s:currentScheme = 0

"-1 or 1 for backwards or forwards respectively
function! ForTheReallys#ToggleColorschemes(direction)
	let s:currentScheme = (s:currentScheme + a:direction) % len(s:colorschemes)
	execute "colorscheme " . s:colorschemes[s:currentScheme]
endfunction

"skip any char I want.
function! ForTheReallys#Skip(char)
	let nextchar = getline('.')[col('.')-1]
	return l:nextchar == a:char ? "\<Right>" : a:char
endfunction

"capitalize first letter in sentence
function! ForTheReallys#AutoUppercase()
	for char in split('abcdefghijklmnopqrstuvwxyz', '\zs')
		exe printf("inoremap <buffer> <expr> %s search('[.!?]\\_s\\+\\%%#', 'bcnw') ? '%s' : '%s'", char, toupper(char), char)
	endfor
endfunction

"unbind all letters that may have been bound by the autoUppercase function
function! ForTheReallys#NoAutoUppercase()
	for l:char in split('abcdefghijklmnopqrstuvwxyz', '\zs')
		exe printf("iunmap <buffer> %s", l:char)
	endfor
endfunction

"similar to pageup but go to top line first
function! ForTheReallys#UP()
	return line(".") == line("w0") ? "zbH" : "H"
endfunction

"similar to pagedown but go to the bottom line first
function! ForTheReallys#DOWN()
	return line(".") == line("w$") ? "ztL" : "L"
endfunction
