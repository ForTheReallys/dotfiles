let g:CommandTSelectNextMap  = ['<C-n>', '<C-j>', '<Down>', '<Tab>']
let g:CommandTSelectPrevMap  = ['<C-p>', '<C-k>', '<Up>', '<S-Tab>']
let g:CommandTToggleFocusMap = "<Nop>"

nmap <silent> <C-t>      <Plug>(CommandT)
nmap <silent> <Leader>tb <Plug>(CommandTBuffer)
nmap <silent> <Leader>tj <Plug>(CommandTJump)
nmap <silent> <Leader>th <Plug>(CommandTHelp)
