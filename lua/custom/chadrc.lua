-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  -- theme = "gruvchad",
  -- theme = "onedark",
  -- theme = "siduck",
  theme = "onedark_custom",
  -- https://nvchad.github.io/config/theming
  hl_override = require "custom.highlights"
}

M.plugins = {
  user = require "custom.plugins",
  -- https://nvchad.com/config/plugins#override-default-config-of-a-plugin
 -- override = {
 --   ["folke/which-key.nvim"] = {
 --     disable = false,
 --   },
 -- },
}

-- nvim mappings shortcuts
M.mappings = require "custom.mappings"

return M
