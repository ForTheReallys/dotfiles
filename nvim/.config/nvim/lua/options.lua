require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local opt = vim.opt

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
opt.wrap = false
opt.foldmethod = "indent"
opt.foldenable = false

-- This is set in archlinux to y$.  Have to override this here
-- vim.api.nvim_del_keymap('n', 'Y')
