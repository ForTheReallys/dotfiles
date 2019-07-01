"compatibility code stolen by wincent
let s:expansion_active = 0

function! autocomplete#setup_mappings()
    "overwrite the mappings that UltiSnips setus up during expansion.
    execute printf('inoremap <buffer> <silent> %s <C-R>=autocomplete#expand_or_jump("N")<CR>', g:UltiSnipsJumpForwardTrigger)
    execute printf('snoremap <buffer> <silent> %s <Esc>:call autocomplete#expand_or_jump("N")<CR>', g:UltiSnipsJumpForwardTrigger)
    execute printf('inoremap <buffer> <silent> %s <C-R>=autocomplete#expand_or_jump("P")<CR>', g:UltiSnipsJumpBackwardTrigger)
    execute printf('snoremap <buffer> <silent> %s <Esc>:call autocomplete#expand_or_jump("P")<CR>', g:UltiSnipsJumpBackwardTrigger)

    let s:expansion_active = 1
endfunction

function! autocomplete#teardown_mappings()
    let s:expansion_active = 0
endfunction

let g:ulti_jump_backwards_res = 0
let g:ulti_jump_forwards_res = 0
let g:ulti_expand_res = 0

function! autocomplete#expand_or_jump(direction)
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        "no expansion occurred.
        if pumvisible()
            "Pop-up is visible, let's select the next (or previous) "completion.
            return a:direction == 'N' ? "\<C-n>" : "\<C-p>"
        else
            if s:expansion_active
                if a:direction == 'N'
                    call UltiSnips#JumpForwards()
                    if g:ulti_jump_forwards_res == 0
                        "we did not jump forwards
                        return "\<Tab>"
                    endif
                else
                    call UltiSnips#JumpBackwards()
                endif
            else
                if a:direction == 'N'
                    return "\<Tab>"
                endif
            endif
        endif
    endif

    "no popup is visible,a snippet was expanded, or we jumped, or we failed to
    "jump backwards, so nothing to do.
    return ''
endfunction
