-- Just an example, supposed to be placed in /lua/custom/
local env = require "custom.env"
local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  -- theme = "gruvchad",
  -- theme = "onedark",
  -- theme = "siduck",
  theme = "decay",
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
    },
    ["goolord/alpha-nvim"] = {
      header = {
        type = "text",
        val = {
          "██████   ██████      ██ ████████     ███    ██  ██████  ██     ██ ",
          "██   ██ ██    ██     ██    ██        ████   ██ ██    ██ ██     ██ ",
          "██   ██ ██    ██     ██    ██        ██ ██  ██ ██    ██ ██  █  ██ ",
          "██   ██ ██    ██     ██    ██        ██  ██ ██ ██    ██ ██ ███ ██ ",
          "██████   ██████      ██    ██        ██   ████  ██████   ███ ███  ",
          "                                                                  ",
          "                                                                  ",
        },
        opts = {
          position = "center",
          hl = "AlphaHeader",
        },
      },
      buttons = {
        val = {
          -- button icon; https://www.nerdfonts.com/cheat-sheet
          -- require'custom.helper'.button("SPC f f", "  Find File  ", ":Telescope find_files<CR>"),
          require'custom.helper'.button("SPC f f", "  Find File  ", ":Telescope find_files<CR>"),
          require'custom.helper'.button("SPC f o", "  Recent File  ", ":Telescope oldfiles<CR>"),
          require'custom.helper'.button("SPC f w", "  Find Word  ", ":Telescope live_grep<CR>"),
          require'custom.helper'.button("SPC b m", "  Bookmarks  ", ":Telescope marks<CR>"),
          require'custom.helper'.button("SPC t h", "  Themes  ", ":Telescope themes<CR>"),
          require'custom.helper'.button("SPC p p", "  Projects  ", ":Telescope project<CR>"),
          require'custom.helper'.button("SPC e s", "  Settings", ":e $MYVIMRC | :cd %:p:h <CR>"),
        },
      }
    },
  },
}

-- nvim mappings shortcuts
M.mappings = require "custom.mappings"

return M
