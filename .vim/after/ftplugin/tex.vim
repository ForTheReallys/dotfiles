setlocal wrapmargin=1 formatoptions+=aw
if exists("*mkdir") && (has("python3") || has("python"))
	packadd vim-latex-live-preview
endif
