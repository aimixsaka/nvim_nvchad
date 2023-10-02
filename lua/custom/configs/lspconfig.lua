local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- hack
-- FIX warning: multiple different client offset_encodings detected for buffer
capabilities.offsetEncoding = 'utf-8'

-- if you just want default config for the servers then put them in a table
local servers = {
  "html",
  "cssls",
  "tsserver",
  "clangd",
  "rust_analyzer",
  "gopls",
  "pyright",
  "bashls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- nix language server
lspconfig.nixd.setup {

}


