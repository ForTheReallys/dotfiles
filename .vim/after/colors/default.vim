"set powerline config to use default
if exists("g:loaded_powerline") && g:loaded_powerline == 1
	let g:powerline_config_overrides = {"ext": {"vim": {"colorscheme": "default"}}}
	python3 powerline_setup()
endif
