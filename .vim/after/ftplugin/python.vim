iabbrev <buffer> true True
iabbrev <buffer> false False
iabbrev <buffer> improt import

inoremap <silent> <expr> <buffer> : ForTheReallys#Skip(':')
inoremap <buffer> ++ <Space>+= 1
inoremap <buffer> -- <Space>-= 1

setlocal shiftwidth=8
setlocal softtabstop=0
setlocal noexpandtab
