local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "azure_pipelines_ls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.omnisharp.setup({
  on_attach = on_attach,
  capabilities = capabilitie,
  cmd = {"/home/alex/.local/share/nvim/mason/packages/omnisharp/omnisharp"},
})

-- 
-- lspconfig.pyright.setup { blabla}
