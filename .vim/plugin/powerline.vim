if exists("g:loaded_powerline")
    finish
endif

if has("statusline") && has("python3")
	let g:loaded_powerline = 1
	python3 from powerline.vim import setup as powerline_setup
	python3 powerline_setup()
	"don't delete this.  I need it for when we change colorschemes
	"python3 del powerline_setup
	set t_Co=256 " number of colors
	set laststatus=2
endif
