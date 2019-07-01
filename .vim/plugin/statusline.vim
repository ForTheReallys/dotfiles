if exists("g:loaded_powerline") || !has("statusline")
    finish
endif
let g:loaded_powerline = 1

if has("python3")
	call powerline#StartPowerline()
endif
