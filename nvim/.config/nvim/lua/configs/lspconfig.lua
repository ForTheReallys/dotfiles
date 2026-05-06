require("nvchad.configs.lspconfig").defaults()

vim.lsp.config['azure_pipelines_ls'] = {
  setup = {
    cmd = { "azure-pipelines-language-server", "--stdio" },
    filetypes = { "yaml" },
    root_dir = function(fname)
      return vim.fs.dirname(vim.fs.find({ "azure-pipelines.yml", ".git" }, { upward = true, path = fname })[1])
    end,
  }
}

local servers = {
  -- "azure_pipelines_ls",
  "bashls",
  "clangd",
  "cmake",
  "cucumber_language_server",
  "cssls",
  "html",
  "docker_compose_language_service",
  "dockerls",
  "gh_actions_ls",
  "jedi_language_server", -- python
  "jqls", -- jq
  "luals", -- lua
  "csharp_ls", -- .NET
  -- "omnisharp", -- .NET
  "terraformls", -- terraform
  "ts_ls", -- typescript
  "vim-language-server", -- vimscript
  "yamlls", -- yaml
}

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
