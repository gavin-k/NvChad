-- example file i.e lua/custom/init.lua
-- load your options globals, autocmds here or anything .__.
-- you can even override default options here (core/options.lua)

-- Install tabnine in neovim. https://github.com/tzachar/cmp-tabnine/issues/47#issuecomment-1212127917

-- local opt = vim.opt
local g = vim.g
-- local config = require("core.utils").load_config()

-- For neovide begin
-- if g.neovide == true then
if g.neovide ~= nil then
  -- https://neovide.dev/configuration.html#idle-refresh-rate
  g.neovide_refresh_rate = 60
  g.neovide_transparency = 0.7
  g.transparency = 0.7
  g.neovide_background_color = '#0f1117'.. string.format('%x', math.floor(255 * g.transparency))

  g.neovide_input_macos_alt_is_meta = true

end
-- For neovide end

-- For lsp_lines begin
-- don't work
-- vim.diagnostic.config({
--   virtual_text = false
-- })

-- https://github.com/neovim/nvim-lspconfig/issues/662#issuecomment-759442828
-- vim.diagnostic.config({virtual_text = false})
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false
    }
)
-- For lsp_lines end
