"only load our settings once
if exists("g:loaded_settings")
    finish
endif
let g:loaded_settings = 1

if has("multi_byte")
	set encoding=utf-8                  "use utf-8 (obviously)}
endif

if has("syntax")
	syntax on
	filetype on
	filetype indent plugin on

	set cursorline                      "highlight the current line}
	set synmaxcol=200                   "Don't highlight lines over 200 chars (Speeds stuff up)
endif

if has("smartindent")
	set smartindent
endif

if has("linebreak")
	if v:version > 800
		set breakindent                     "wrapped lines are indented}
		set breakindentopt=shift:2          "indented by 2 spaces
	endif
	set showbreak=↳                     "DOWNWARDS ARROW WITH TIP RIGHTWARDS (U+21B3, UTF-8: E2 86 B3)
endif

if has("mksession")
	set viewoptions=folds               "only save the folds when we leave}
endif

if has("windows") && has("vertsplit")
	set cmdwinheight=2                  "Dont make the command window too big}
	set splitbelow
endif

if has("reltime") && has("extra_search")
	set incsearch                       "highlight current search results}
endif

if has("wildmenu")
	set wildmenu                        "Enable tab completion in the command line}
	set wildignorecase                  "ignore case when expanding filenames
endif

if has("cmdline_info")
	set showcmd                         "(It is actually not needed with the command window)
endif

if has("folding")
	set foldnestmax=1                   "I don't ever use folds}
	if has("windows")
		set fillchars=fold:-
	endif
endif


if has("virtualedit")
	set virtualedit=block
endif

if has("patch-7.4.793")
	set belloff=all                     "turn off the bell
endif

if exists("+relativenumber")
	set relativenumber
endif
set number

set mps=(:)                         "To characters to be used with %
set mps+={:}
set mps+=[:]

set lazyredraw                      "Speed up redrawing with cursor line

set autoindent                      "keep indent on return

set whichwrap=b,s,h,l,<,>,~,[,]     "Allow all keys to be used to cross line boundaries"
set nowrap
set modeline

set ignorecase                      "ignore case in searches
set smartcase                       "Unless the case contains uppercase letter

set path+=**                                "the path used for the 'gf' command

set list                                    "extra characters to indicate space, tab etc
set listchars=tab:\¦\  
set listchars+=trail:•
set listchars+=extends:>
set listchars+=precedes:<

"mainly for vertical splits

set nojoinspaces                            "dont join extra spaces (when programming)
set switchbuf=usetab,useopen                "use currently open buffers when opening files

set iskeyword-=_                            "underscore is now considered a word delimeter
set noexpandtab                             "expand tab to spaces
set tabstop=8                               "8 spaces for each tab
set shiftwidth=8                            "8 spaces for each tab
set shiftround

set backspace=indent,eol,start              "for backspacing anywhere I want

if &ttyfast
	set sidescroll=1                    "make side scrolling more pleasing
	set sidescrolloff=10                "make it more readable
endif

if has("termguicolors")
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum" "For true color
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum" "For true color
endif
