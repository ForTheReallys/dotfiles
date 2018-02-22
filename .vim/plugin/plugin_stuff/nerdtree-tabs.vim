let g:tagbar_vertical = 0
let g:tagbar_left = 0
nnoremap <Leader><Leader>t :<C-u>call ToggleTB()<CR>
"do we want to switch tagbars when we switch buffers
nnoremap <Leader>tp :<C-u>TagbarTogglePause<CR>
highlight link TagbarHighlight PmenuSel

let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_focus_on_files = 1
nnoremap <Leader>nt :<C-u>call ToggleNT()<CR>

augroup NTandTB
    autocmd!
    "autocmd VimEnter * TagbarTogglePause "make tagbar switch when we look at other files
    autocmd BufEnter NERD_tree_* set filetype=nerdtree
augroup end

"now for the IDE like functions

"returns 1 if it is open and 0 if false
function! IsTBOpen()
    if exists('t:tagbar_buf_name')
        for window in tabpagebuflist()
            if bufname(window) ==# t:tagbar_buf_name
                return 1
            endif
        endfor
    endif

    return 0
endfunction

"same as above
function! IsNTopen()
    if exists('t:NERDTreeBufName')
        for window in tabpagebuflist()
            if bufname(window) ==# t:NERDTreeBufName
                return 1
            endif
        endfor
    endif
    return 0
endfunction

"Toggle NERDTree
"puts the nerdtree above the tagbar if there is one
function! ToggleNT()
    "if it is open
    if IsNTopen()
        NERDTreeTabsToggle "close it
        return
    endif

    "if it's not open and TagBar is not
    if !IsTBOpen()
        NERDTreeTabsToggle
    else
        "first close the tagbar
        TagbarClose
        "Turn on NERD_tree
        NERDTreeTabsToggle
        call ToggleTB()
    endif
endfunction

"Toggle tag bar
"puts the tagbar underneath the nerdtree if there is one
function! ToggleTB()
    if IsTBOpen()
        TagbarClose
        return
    endif

    if IsNTopen()
        "go all the way to the left
        100 wincmd h
        "open the tag bar underneath half way
        let g:tagbar_vertical = winheight("%") / 10 * 5
        TagbarOpen

        "reset everything
        let g:tagbar_vertical = 0
    else
        let g:tagbar_left = 1
        let g:tagbar_width = 31 "lenth of nt
        TagbarOpen
        let g:tagbar_left = 0
        let g:tagbar_width = 30
    endif
endfunction
