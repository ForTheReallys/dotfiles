let g:ycm_key_list_select_completion   = ['<C-n>, <Up>']
let g:ycm_key_list_previous_completion = ['<C-p>, <Down>']
let g:ycm_key_list_accept_completion   = ['<C-y>']

"use the default ycm_extra_conf.py
set completeopt-=preview
set pumheight=10

let g:ycm_global_ycm_extra_conf = "~/.vim/plugin/plugin_stuff/ycm_extra_conf.py"
let g:ycm_extra_conf_vim_data = ['&filetype']
let g:ycm_python_binary_path = 'python'

"turn off error checking
let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_echo_current_diagnostic = 0


"let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_comments = 1

"we remove mail and text from the blacklist
let g:ycm_filetype_blacklist = {
            \ 'tagbar':    1,
            \ 'qf':        1,
            \ 'notes':     1,
            \ 'markdown':  1,
            \ 'unite':     1,
            \ 'vimwiki':   1,
            \ 'pandoc':    1,
            \ 'infolog':   1
            \}

"don't uncomment this. If we do, we can't use ultisnips with fewer than 3 chars
"let g:ycm_min_num_of_chars_for_completion = 3

"use ultisnips inside ycm
let g:ycm_use_ultisnips_completer = 1

"start semantic completer after third char of word
"this just triggers it, meaning it only queries the omnifunc on the third char
let g:ycm_semantic_triggers = {
            \ 'c':      ['re! [ a-zA-Z_]{3}'],
            \ 'cpp':    ['re! [ a-zA-Z_]{3}'],
            \ 'java':   ['re! [ a-zA-Z_]{3}'],
            \ 'python': ['re! [ a-zA-Z_]{3}']
            \}

"fix the highlighting because it absolutely sucks
highlight link YcmErrorSection Error
highlight link YcmWarningSection Todo
