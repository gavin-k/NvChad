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

