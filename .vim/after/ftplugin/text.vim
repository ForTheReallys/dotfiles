setlocal textwidth=79 fo+=2 joinspaces
call ForTheReallys#AutoUppercase()

iabbrev god God
iabbrev america America

xnoremap J :j<CR>
nnoremap <buffer> <silent> ,J :silent g/^\d\./normal vipJ<CR>
nnoremap <buffer> <silent> ,j :silent g/^\d\./normal gqgq<CR>
