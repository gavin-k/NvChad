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
    -- ["<leader>."] = {"<cmd> lua require'telescope'.extensions.project.project{ display_type = 'full' } <CR>", "Telescope project"},
    ["<leader>."] = {"<cmd> lua require'telescope'.extensions.project.project(vim.tbl_deep_extend('force', require'telescope.themes'.get_dropdown(), {display_type = 'full'})) <CR>", "Telescope project"},
    ["<leader>pp"] = { "<cmd> Telescope project display_type=full <CR>", "pick project" },
  }
}

M.dap = {
  -- https://alpha2phi.medium.com/neovim-lsp-and-dap-using-lua-3fb24610ac9f
  n = {
    ['<leader>dcr'] = {'<cmd>lua require"dap".continue()<CR>', "Dap Continue/Resume"},
    ['<F5>'] = {'<cmd>lua require"dap".continue()<CR>', "Dap Continue/Resume"},
    ['<leader>dsv'] = {'<cmd>lua require"dap".step_over()<CR>', "Dap Step Over"},
    ['<F10>'] = {'<cmd>lua require"dap".step_over()<CR>', "Dap Step Over"},
    ['<leader>dsi'] = {'<cmd>lua require"dap".step_into()<CR>', "Dap Step Into"},
    ['<F11>'] = {'<cmd>lua require"dap".step_into()<CR>', "Dap Step Into"},
    ['<leader>dso'] = {'<cmd>lua require"dap".step_out()<CR>', "Dap Step Out"},
    ['<F12>'] = {'<cmd>lua require"dap".step_out()<CR>', "Dap Step Out"},
    ['<leader>dtb'] = {'<cmd>lua require"dap".toggle_breakpoint()<CR>', "Dap Toggle Breakpoint"},
    ['<leader>dsbr'] = {'<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', "Dap Breakpoint Condition"},
    ['<leader>dsbm'] = {'<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', "Dap Breakpoint Log Message"},
    ['<leader>dro'] = {'<cmd>lua require"dap".repl.open()<CR>', "Dap open Repl"},
    ['<leader>drl'] = {'<cmd>lua require"dap".repl.run_last()<CR>', "Dap Run Last Repl"},

    -- telescope-dap
    ['<leader>dcc'] = {'<cmd>lua require"telescope".extensions.dap.commands{}<CR>', "Telescope Dap Commands"},
    ['<leader>dco'] = {'<cmd>lua require"telescope".extensions.dap.configurations{}<CR>', "Telescope Dap Configurations"},
    ['<leader>dlb'] = {'<cmd>lua require"telescope".extensions.dap.list_breakpoints{}<CR>', "Telescope Dap List Breakpoints"},
    ['<leader>dv'] = {'<cmd>lua require"telescope".extensions.dap.variables{}<CR>', "Telescope Dap Variables"},
    ['<leader>df'] = {'<cmd>lua require"telescope".extensions.dap.frames{}<CR>', "Telescope Dap Frames"},
  },
}
-- lua print require'telescope'.extensions

return M
