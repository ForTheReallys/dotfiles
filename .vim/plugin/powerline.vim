if exists("g:loaded_powerline")
    finish
endif

if has("statusline") && has("python3")
	let g:loaded_powerline = 1
	python3 << EOF
import vim
try:
	from powerline.vim import setup as powerline_setup
	powerline_setup()
	#don't delete powerline_setup.  I need it for when we change colorschemes
	#vim.command("python3 del powerline_setup")
	vim.command("set t_Co=256")
	vim.command("set laststatus=2")
except ImportError:
	pass
EOF
endif
