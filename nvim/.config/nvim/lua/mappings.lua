require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "Y", "<Nop>")
vim.keymap.del("n", "Y")
-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")


local UpFunc = "line('.')==line('w0') ? \"zbH\" : \"H\""
local DownFunc = "line('.')==line('w$') ? \"ztL\" : \"L\""

-- Disabled
map("n", "<tab>", "<Nop>")
map("n", "<S-tab>", "<Nop>")


-- DAP
map("n", "<F5>", "<cmd> DapContinue <CR>", {desc = "Start or continue debugger"})
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", {desc = "Add a breakpoint to line"})


-- Windows
map("n", "gh", "<C-w>h", { desc = "Go to the left window" })
map("n", "gj", "<C-w>j", { desc = "Go to the down window" })
map("n", "gk", "<C-w>k", { desc = "Go to the up window" })
map("n", "gl", "<C-w>l", { desc = "Go to the right window" })

map("n", "gH", "<C-w>H", {desc = "Move window to very left"} )
map("n", "gJ", "<C-w>J", {desc = "Move window to very bottom"} )
map("n", "gK", "<C-w>K", {desc = "Move window to very top"} )
map("n", "gL", "<C-w>L", {desc = "Move window to very right"} )
--- resize windows
map("n", "<C-h>",  "<C-w>>")
map("n", "<C-j>",  "<C-w>-")
map("n", "<C-k>",  "<C-w>+")
map("n", "<C-l>",  "<C-w><")

--- create splits
map("n", "<leader>n", "<C-w>n", {desc = "Create horizontal split"})
map("n", "<leader>v", "<C-w>v", {desc = "Create vertical split"})


-- Toggles
map("n", "<leader>R",  "<cmd> redraw! <CR>")
map("n", "s" , "<Nop>")
map("n", "sl", "<cmd> set list! <CR> <cmd> set list? <CR>", {desc = "Toggle list"})
map("n", "sw", "<cmd> set wrap! <CR> <cmd> set wrap? <CR>", {desc = "Toggle wrap"})
map("n", "sr", "<cmd> set relativenumber! <CR> <cmd> set relativenumber? <CR>", {desc = "Toggle relativenumber"})
map("n", "sn", "<cmd> set number! <CR> <cmd> set number? <CR>", {desc = "Toggle number"})
map("n", "sc", "<cmd> set ignorecase! <CR> <cmd> set ignorecase? <CR>", {desc = "Toggle ignorecase"})
map("n", "sa", "<cmd> set autoread! <CR> <cmd> set autoread? <CR>", {desc = "Toggle autoread"})
map("n", "se", "<cmd> set expandtab! <CR> <cmd> set expandtab? <CR>", {desc = "Toggle expandtab"})
map("n", "st", function() require("base46").toggle_transparency() end, {desc = "Toggle expandtab"})


-- General
map("n", ":", "q:")
map("n", "cc", "C")
map("n", "<leader>fd",   "<cmd> filetype detect <CR>", { desc = "Detect filetype"})

map("n", "<Space>",   "m\"viwb~`\"", {desc = "Capitalize first letter"})
map("n", "<leader><Space>",   "m\"viwB~`\"", {desc = "Capitalize first LETTER"})

map("n", "+", "<C-a>")
map("n", "-", "<C-x>")

map("n", "vv", "v$h", {desc = "Highlight rest of line until newline"})
map("n", "yy", "y$", {desc = "Yank rest of line until newline"})

map("n", "ss", "<cmd>s/\\s\\+$//g <CR>", {desc = "Remove trailing whitespace"})

map("n", "go", "mzo<esc>`z", {desc = "Create new line below cursor without leaving normal mode"})
map("n", "gO", "mzO<esc>`z", {desc = "Create new line above cursor without leaving normal mode"})

map("n", "H",  UpFunc, {expr = true})
map("n", "L",  DownFunc, {expr = true})

-- General visual
map("v", "+",  "g<C-a>")
map("v", "-",  "g<C-x>")
map("x", "ss", "<cmd>s/\\s\\+$//g <CR>", { desc = "Remove trailing whitespace"})
map("v", "<",   "<gv")
map("v", ">",   ">gv")
map("v", "'",   "`")
map("v", "*",   "y/<C-r>\"\\><Home>\\<<End><CR>")
map("v", "#",   "y?<C-r>\"\\><Home>\\<<End><CR>")
map("v", "H", UpFunc, {expr = true} )
map("v", "L", DownFunc, {expr = true} )

-- tabufline
map("n", "<left>", function() require("nvchad.tabufline").prev() end, {desc = "Goto prev buffer"})
map("n", "<right>", function() require("nvchad.tabufline").next() end, {desc = "Goto next buffer" })

map("n", "<Return>", "za")
map("x", "<Return>", "za")
