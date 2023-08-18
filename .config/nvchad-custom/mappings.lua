---@type MappingsTable
local M = {}

local UpFunc = "line('.')==line('w0') ? \"zbH\" : \"H\""
local DownFunc = "line('.')==line('w$') ? \"ztL\" : \"L\""

M.disabled = {
  n = {
    ["<tab>"] = {""},
    ["<S-tab>"] = {""},
  },
}

M.windows = {
  n = {
    ["gh"] = { "<C-w>h", "Go to the left window" },
    ["gj"] = { "<C-w>j", "Go to the down window" },
    ["gk"] = { "<C-w>k", "Go to the up window" },
    ["gl"] = { "<C-w>l", "Go to the right window" },

    ["gH"] = { "<C-w>H" },
    ["gJ"] = { "<C-w>J" },
    ["gK"] = { "<C-w>K" },
    ["gL"] = { "<C-w>L" },

    --- resize windows
    ["<C-h>"] = { "<C-w>>" },
    ["<C-j>"] = { "<C-w>-" },
    ["<C-k>"] = { "<C-w>+" },
    ["<C-l>"] = { "<C-w><" },

    --- create splits
    ["<leader>n"] = {"<C-w>n", "Create horizontal split"},
    ["<leader>v"] = {"<C-w>v", "Create vertical split"},
  }
}

M.toggles = {
  n = {
    ["<leader>R"] = {"<cmd> redraw! <CR>"},
    ["s"] = {"<Nop>"},
    ["sl"] = {"<cmd> set list! <CR> <cmd> set list? <CR>", "Toggle list"},
    ["sw"] = {"<cmd> set wrap! <CR> <cmd> set wrap? <CR>", "Toggle wrap"},
    ["sr"] = {"<cmd> set relativenumber! <CR> <cmd> set relativenumber? <CR>", "Toggle relativenumber"},
    ["sn"] = {"<cmd> set number! <CR> <cmd> set number? <CR>", "Toggle number"},
    ["sc"] = {"<cmd> set ignorecase! <CR> <cmd> set ignorecase? <CR>", "Toggle ignorecase"},
    ["sa"] = {"<cmd> set autoread! <CR> <cmd> set autoread? <CR>", "Toggle autoread"},
    ["se"] = {"<cmd> set expandtab! <CR> <cmd> set expandtab? <CR>", "Toggle expandtab"},
    ["st"] = {function() require('base46').toggle_transparency() end, "Toggle transparency"}
  }
}

M.general = {
  n = {
    [":"] = { "q:" },
    ["cc"] = { "C" },
    ["<leader>fd"] = { "<cmd> filetype detect <CR>", "Detect filetype"},

    ["<Space>"] = { "m\"viwb~`\"", "Capitalize first letter"},
    ["<leader><Space>"] = { "m\"viwB~`\"", "Capitalize first LETTER" },

    ["+"] = { "<C-a>" },
    ["-"] = { "<C-x>" },

    ["vv"] = { "v$h", "Highlight rest of line until newline" },
    ["yy"] = { "y$", "Yank rest of line until newline" },

    ["ss"] = { "<cmd> s/\\s*$//g <CR>", "Remove trailing whitespace"},

    ["go"] = { "mzo<esc>`z", "Create new line below cursor without leaving normal mode" },
    ["gO"] = { "mzO<esc>`z", "Create new line above cursor without leaving normal mode" },

    ["H"] = { UpFunc, opts= {expr = true} },
    ["L"] = { DownFunc, opts= {expr = true} },
  },

  v = {
    ["+"] = { "g<C-a>" },
    ["-"] = { "g<C-x>" },

    ["ss"] = { "<cmd> s/\\s*$//g <CR>", "Remove trailing whitespace"},

    ["<"] = { "<gv" },
    [">"] = { "<gv" },

    ["'"] = { "`" },

    ["*"] = { "y/<C-r>\"\\><Home>\\<<End><CR>" },
    ["#"] = { "y?<C-r>\"\\><Home>\\<<End><CR>" },

    ["H"] = { UpFunc, opts= {expr = true} },
    ["L"] = { DownFunc, opts= {expr = true} },
  }
}

M.tabufline = {
  n = {
    ["<left>"] = { function() require("nvchad.tabufline").tabuflinePrev() end, "Goto next buffer"},
    ["<right>"] = { function() require("nvchad.tabufline").tabuflineNext() end, "Goto prev buffer" },
  }
}

-- more keybinds!

return M
