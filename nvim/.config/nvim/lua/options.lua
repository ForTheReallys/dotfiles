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

-- Neovide settings
local g = vim.g
g.neovide_cursor_animation_length = 0
g.neovide_scroll_animation_length = 0
g.neovide_position_animation_length = 0

-- This is set in archlinux to y$.  Have to override this here
-- vim.api.nvim_del_keymap('n', 'Y')
