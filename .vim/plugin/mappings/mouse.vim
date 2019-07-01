if !has("mouse")
	finish
endif

"smooth scrolling
nnoremap <ScrollWheelUp>    <C-y>
nnoremap <ScrollWheelDown>  <C-e>

vnoremap <ScrollWheelUp>    <C-y>
vnoremap <ScrollWheelDown>  <C-e>

inoremap <ScrollWheelUp>    <C-x><C-y>
inoremap <ScrollWheelDown>  <C-x><C-e>
