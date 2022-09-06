-- lua/custom/mappings 
-- https://nvchad.com/config/Mappings
local M = {}

-- add this table only when you want to disable default keys
-- M.disabled = {
--  n = {
--      ["<leader>h"] = "",
--      ["<C-s>"] = ""
--  }
-- }

-- M.abc = {

  -- n = {
     -- ["<C-n>"] = {"<cmd> Telescope <CR>", "Open Telescope"}
  -- }

  -- i = {
    -- more keys!
  -- }
-- }

M.hop = {
  -- stuff
  n = {
     ["<leader>'"] = {"<cmd> HopChar2 <CR>", "Hop Char 2"},
     -- C-' 快捷键只适用于 Neovide等 GUI程序中，不适用 Terminal'
     -- ["<C-\'>"] = {"<cmd> HopChar1 <CR>", "Hop Char 1"},
     ["<M-\'>"] = {"<cmd> HopChar1 <CR>", "Hop Char 1"},
  }
}

M.lsp_config = {}

M.telescope_project = {
  n = {
    -- https://github.com/nvim-telescope/telescope-project.nvim#available-options
    ["<leader>."] = {"<cmd> lua require'telescope'.extensions.project.project{ display_type = 'full' } <CR>", "Telescope project"},
  }
}

return M
