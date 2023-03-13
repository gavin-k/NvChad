-- https://nvchad.github.io/config/plugins
local present, env = pcall(require, "custom.env")
if not present then
  env = require "custom.env-example"
end

return {

  -- system plugin override
  ["nvim-telescope/telescope.nvim"] = {
    config = function()
      require "plugins.configs.telescope"
      require "custom.plugins.telescope"
    end,
    extensions = {
      -- configure for project ext
      project = {
        base_dirs = env.project_base_dirs,
        hidden_files = true, -- default: false
        theme = "dropdown",
      },
    },
    -- this will override the default config. can't use theme etc.
    -- extensions_list = { "project" } ,
  },
  ["goolord/alpha-nvim"] = {
    disable = false,
    override_options = {
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
          require("custom.helper").button("SPC f f", "  Find File  ", ":Telescope find_files<CR>"),
          -- require'custom.helper'.button("SPC f f", "  Find File  ", ":Telescope find_files<CR>"),
          require("custom.helper").button("SPC f o", "  Recent File  ", ":Telescope oldfiles<CR>"),
          require("custom.helper").button("SPC f w", "  Find Word  ", ":Telescope live_grep<CR>"),
          require("custom.helper").button("SPC b m", "  Bookmarks  ", ":Telescope marks<CR>"),
          require("custom.helper").button("SPC t h", "  Themes  ", ":Telescope themes<CR>"),
          require("custom.helper").button("SPC p p", "  Projects  ", ":Telescope project<CR>"),
          require("custom.helper").button("SPC e s", "  Settings", ":e $MYVIMRC | :cd %:p:h <CR>"),
        },
      },
    },
  },

  -- Override plugin config
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "intelephense",
        "json-lsp",
        "php-cs-fixer",
        "phpcs",
        "deno",
        "prettier",
        "shfmt",
        "shellcheck",
        "stylua", -- format lua code
        "clangd",
      },
    },
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      ensure_installed = {
        "lua",
        "php",
        "html",
        "css",
        "go",
        "java",
        "javascript",
        "rust",
      },
    },
  },

  ["phaazon/hop.nvim"] = {
    branch = "v2", -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup {
        keys = "etovxqpdygfblzhckisuran",
        multi_windows = true,
      }
    end,
  },

  ["elkowar/yuck.vim"] = { ft = "yuck" },

  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- https://git.sr.ht/~whynothugo/lsp_lines.nvim
  -- show error lines
  ["https://git.sr.ht/~whynothugo/lsp_lines.nvim"] = {
    config = function()
      require("lsp_lines").setup()
      -- Cant disable virtual_text
      -- Disable virtual_text since it's redundant due to lsp_lines.
      vim.diagnostic.config {
        virtual_text = false,
      }
    end,
  },

  -- https://nvchad.com/config/Lsp%20stuff
  -- override lspconfig core default config
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- https://nvchad.com/config/plugins#enable-dashboard
  -- need run :PackerSync
  -- override core config
  ["folke/which-key.nvim"] = {
    disable = false,
  },
  -- ["goolord/alpha-nvim"] = {
  --
  --   disable = false,
  -- },

  -- https://github.com/nvim-telescope/telescope-project.nvim#workspace-mappings-insert-mode
  ["nvim-telescope/telescope-project.nvim"] = {
    disable = false,
    -- after = "telescope.nvim",
    config = function()
      -- require'telescope'.load_extension('project')
    end,
  },
  -- ["nvim-telescope/telescope.nvim"] = {
  --   config = function()
  --     require "plugins.configs.telescope"
  --     require "custom.plugins.telescope"
  --   end,
  -- },

  -- support DAP. clients: https://microsoft.github.io/debug-adapter-protocol/implementors/adapters/
  ["mfussenegger/nvim-dap"] = {
    disable = false,
    config = function()
      require "custom.plugins.nvim-dap"
    end,
  },
  ["rcarriga/nvim-dap-ui"] = {
    disable = false,
    requires = { "mfussenegger/nvim-dap" },
    config = function()
      require "custom.plugins.dapui"
    end,
  },
  ["nvim-telescope/telescope-dap.nvim"] = {
    disable = false,
    -- config = function ()
    --   require "custom.plugins.dap"
    -- end
  },

  -- support auto formatting
  ["jose-elias-alvarez/null-ls.nvim"] = {
    disable = false,
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugins.null-ls").setup()
    end,
    requires = { "nvim-lua/plenary.nvim" },
  },
}
