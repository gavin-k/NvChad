-- https://nvchad.com/config/Lsp%20stuff
-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd"}
-- local servers = { "html", "cssls", "clangd", "intelephense"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#intelephense
-- https://daniele.tech/2021/07/neovim-lsp-with-intelephense-for-php-and-wordpress-and-others/
lspconfig["intelephense"].setup {
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {
    intelephense = {
      format = {
        enable = false,
      },
      diagnostics = {
        undefinedFunctions = false,
        undefinedConstants = false,
      },
      telemetry = {
        enabled = false,
      },
      -- licenceKey = { "" },
    },
  },
}

