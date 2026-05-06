-- Common keymaps from a typical setup
vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end, { desc = "Toggle Breakpoint" })
vim.keymap.set('n', '<Leader>dc', function() require('dap').continue() end, { desc = "DAP Continue" })
vim.keymap.set('n', '<Leader>di', function() require('dap').step_into() end, { desc = "DAP Step Into" })
vim.keymap.set('n', '<Leader>do', function() require('dap').step_over() end, { desc = "DAP Step Over" })
vim.keymap.set('n', '<Leader>du', function() require('dap.ui').toggle() end, { desc = "DAP UI Toggle" })

local dap = require("dap")

dap.adapters.gdb = {
  type = "executable",
  command = "/bin/gdb",
  name = "gdb",
  args = { "--interpreter=dap", }
}

dap.configurations.c = {
  {
    name = "Run executable",
    type = "gdb",
    request = "launch",
    program = function() return vim.fn.input('Path to executable: ', './', 'file') end,
    stopOnEntry = true,
  }
}
