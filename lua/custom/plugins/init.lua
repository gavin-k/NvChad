-- https://nvchad.github.io/config/plugins

return {
  ["phaazon/hop.nvim"] = {
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup {
        keys = 'etovxqpdygfblzhckisuran',
        multi_windows = true,
      }
    end
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
    end
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
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
}

