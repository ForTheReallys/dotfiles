let g:JavaComplete_SourcesPath = getcwd()
let g:JavaComplete_LibsPath = getcwd()

runtime ftplugin/c-based.vim
iabbrev <buffer> improt import
iabbrev <buffer> string String
iabbrev <buffer> bool boolean
iabbrev <buffer> fnotfound FileNotFoundException

nnoremap <buffer> K :<C-u>call JavaHelp()<CR>
nmap <buffer> <Leader>jr <Plug>(JavaComplete-Imports-RemoveUnused)
compiler javac

function! JavaHelp(...)
    let l:search = ''
    if a:0 > 0
        "use the argument
        let l:search = a:1
    else
        "use the word under the cursor
        let l:search = expand("<cword>")
    endif

    "so we can pass an entire package like "java.util.Scanner"
    let l:search = substitute(l:search, "\\.", "/", "g")

    "because all of these end in html
    let l:search .= '.html'
    "all my stuff is in here
    let l:htmlfile = findfile(l:search, "/usr/lib/jvm/java-8-openjdk-amd64/docs/api/**")

    "if not found, print an error and return
    if l:htmlfile == ''
        echoerr "Could not find class ".l:search
        return 1
    endif

    execute "normal! mz"
    execute "silent !google-chrome --new-window ".l:htmlfile." &"
    "if we don't do this, redraw won't work properly for some reason
    sleep 2
    redraw!
    "go back to where we were
    normal! `z
endfunction
