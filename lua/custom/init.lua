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
    g.neovide_background_color = '#0f1117' .. string.format('%x', math.floor(255 * g.transparency))

    g.neovide_input_macos_alt_is_meta = true
    g.neovide_input_use_logo = false

end
-- For neovide end
--
-- For appearance begin
-- can't work on neovide
-- vim.opt.guifont = {"Consolas", "h20"}
vim.opt.guifont = "Consolas:h18"
-- vim.cmd([[
-- set guifont = "Consolas:h20"
-- ]])
-- For appearance end

-- For lsp_lines begin
-- don't work
-- vim.diagnostic.config({
--   virtual_text = false
-- })

-- https://github.com/neovim/nvim-lspconfig/issues/662#issuecomment-759442828
-- vim.diagnostic.config({virtual_text = false})
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false
})
-- For lsp_lines end


-- For diff language setting begin
-- https://www.reddit.com/r/neovim/comments/vu1y6e/comment/ifc03ot/?utm_source=share&utm_medium=web2x&context=3
-- https://www.reddit.com/r/neovim/comments/vkn2e7/change_indent_depending_on_file_type_in_lua/
vim.api.nvim_create_autocmd('FileType', {
  pattern = { "*" },
  -- command = "setlocal shiftwidth=2 tabstop=2",
  callback = function (args)
    local ft = vim.bo[args.buf].filetype
    if ft == "python" then
      -- require("spacing/four")
    elseif ft == "php" then
      require("custom.coding.php")
    elseif ft == "lua" then
      -- do something else 
      -- require("spacing/two")
    end
  end,
})

-- For diff lang end


