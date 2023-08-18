-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local g = vim.g
local opt = vim.opt
g.mapleader = ","

opt.breakindent = true
opt.breakindentopt = { shift = 2 }
opt.list = true
opt.listchars = { tab = "  ", trail = "-", nbsp = "+" }
opt.showbreak = "↳"
opt.linebreak = true
opt.cmdwinheight = 2
opt.virtualedit = "block"
opt.number = true
opt.relativenumber = true
opt.shiftround = true
opt.shortmess:remove('I')

require('custom.autocommands')
-- This is set in archlinux to y$.  Have to override this here
vim.api.nvim_del_keymap('n', 'Y')
