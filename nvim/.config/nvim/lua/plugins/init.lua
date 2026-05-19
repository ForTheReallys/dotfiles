return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "tpope/vim-fugitive",
    lazy = false,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "github/copilot.vim",
    lazy = true,
    config = function()
      -- Mapping tab is already used by NvChad
      vim.g.copilot_no_tab_map = true;
      vim.g.copilot_assume_mapped = true;
      vim.keymap.set('i', '<Right>', 'copilot#Accept("\\<CR>")', {
        expr = true,
        replace_keycodes = false
      });
      -- vim.g.copilot_tab_fallback = "<Right>";
      -- The mapping is set to other key, see custom/lua/mappings  -- or run <leader>ch to see copilot mapping section
    end
  },

    {
      "CopilotC-Nvim/CopilotChat.nvim",
      lazy = true,
      -- branch = "v1",
      dependencies = {
        { "nvim-lua/plenary.nvim" }, -- Required for CopilotChat.nvim
        { "github/copilot.vim" }, -- The official Copilot plugin
      },
      build = "make tiktoken",
      config = function()
        require("CopilotChat").setup {
          -- your configuration options here
        }
      end,
    },

    {
      "rcarriga/nvim-dap-ui",
      lazy = false,
      dependencies = {
        { "mfussenegger/nvim-dap" },
      },
      config = function()
        require "configs.dap"
      end,
    },


  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
