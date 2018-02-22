"remove the annoying color on tabs
highlight SpecialKey guibg=#002b36

if has("termguicolors")
	set termguicolors
endif

"set powerline config to use solarized
if exists("g:loaded_powerline") && g:loaded_powerline == 1
	let g:powerline_config_overrides = {"ext": {"vim": {"colorscheme": "solarized"}}}
	python3 powerline_setup()
endif
