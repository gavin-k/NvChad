-- Just an example, supposed to be placed in /lua/custom/
local env = require "custom.env"
local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  -- theme = "gruvchad",
  -- theme = "onedark",
  -- theme = "siduck",
  theme = "onedark_custom",
  theme_toggle = { "onedark_custom", "gruvbox_light_custom" },
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
  override = {
    ["nvim-telescope/telescope.nvim"] = {
      extensions = {
        -- configure for project ext
        project = {
          base_dirs = env.project_base_dirs,
          hidden_files = true, -- default: false
          theme = "dropdown"
        }
      },
      -- this will override the default config. can't use theme etc.
      -- extensions_list = { "project" } ,
    }
  },
}

-- nvim mappings shortcuts
M.mappings = require "custom.mappings"

return M
