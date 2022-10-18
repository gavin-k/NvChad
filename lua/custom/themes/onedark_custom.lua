local M = {}

M.base_30 = {
  white = "#abb2bf",
  darker_black = "#1b1f27",
  black = "#1e222a", --  nvim bg
  -- black = "#000000", --  nvim bg
  black2 = "#252931",
  -- black2 = "#000000",
  one_bg = "#282c34", -- real bg of onedark
  -- one_bg = "#000000", -- real bg of onedark
  one_bg2 = "#353b45",
  one_bg3 = "#373b43",
  grey = "#42464e",
  grey_fg = "#565c64",
  grey_fg2 = "#6f737b",
  light_grey = "#6f737b",
  red = "#e06c75",
  baby_pink = "#DE8C92",
  pink = "#ff75a0",
  line = "#31353d", -- for lines like vertsplit
  green = "#98c379",
  vibrant_green = "#7eca9c",
  nord_blue = "#81A1C1",
  blue = "#61afef",
  yellow = "#e7c787",
  sun = "#EBCB8B",
  purple = "#de98fd",
  dark_purple = "#c882e7",
  teal = "#519ABA",
  orange = "#fca2aa",
  cyan = "#a3b8ef",
  statusline_bg = "#22262e",
  lightbg = "#2d3139",
  pmenu_bg = "#61afef",
  folder_bg = "#61afef",
}

M.base_16 = {
  -- base00 = "#1e222a",
  -- base00 = "#000000",
  base00 = "#1e222a",
  -- base01 = "#353b45",
  base01 = "none",
  -- base02 = "#3e4451",
  base02 = "none",
  base03 = "#545862",
  base04 = "#565c64",
  base05 = "#abb2bf",
  base06 = "#b6bdca",
  base07 = "#c8ccd4",
  base08 = "#e06c75",
  base09 = "#d19a66",
  base0A = "#e5c07b",
  base0B = "#98c379",
  base0C = "#56b6c2",
  base0D = "#61afef",
  base0E = "#c678dd",
  base0F = "#be5046",
}

vim.opt.bg = "dark"

M.polish_hl = {
  TbLineThemeToggleBtn = { fg = M.base_30.black, bg = M.base_30.white },
  Normal = {
      bg = "none",
      ctermbg = "none",
  },
  NvimTreeNormal = {
      bg = "none",
  },
  NvimTreeNormalNC = {
      bg = "none",
  },
  TabLine = {
      bg = "none",
      ctermbg = "none",
  },
  TabLineSel = {
      bg = "none",
      ctermbg = "none",
  },
  TbLineTabCloseBtn = {bg = "none"},
  -- TbLineThemeToggleBtn = {bg = "none"},
  -- WildMenu = {bg = "none",},
  TabLineFill = {
      bg = "none",
      ctermbg = "none",
      ctermfg = "none",
  },
  StatusLine = {
      bg = "none",
  },
  StatusLineNC = {
      bg = "none",
  },
  LineNr = {
      -- bg = "blue",
      fg = "#566c64",
  },
  -- NvimTreeVertSplit = {
  --     bg = "none",
  -- },
  NvimTreeWinSeparator = {
      bg = "none",
  },
}
M = require("base46").override_theme(M, "onedark_custom")

return M
