

local autocmd = vim.api.nvim_create_autocmd
local map = vim.keymap.set

autocmd("CmdWinEnter", {
  pattern = "*",
  callback = function()
    map({'i', 'n'}, '<CR>', '<CR>', {buffer =  true})
    map('i', '<BS>', '<BS>', {buffer = true})
    map('i', '<Esc><Esc>', '<Esc>:q<CR>', {buffer = true, silent = true})
    map('n', '<Esc><Esc>', ':q<CR>', {buffer = true, silent = true})
    vim.api.nvim_command('startinsert')
    require('cmp').setup.buffer({ completion = { autocomplete = false } })
  end
})
