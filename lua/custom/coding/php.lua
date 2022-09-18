
-- automatically convert tab to spaces
-- vim.opt.expandtab = true
vim.opt_local.expandtab = true
-- <<和>>）时缩进的列数（这里的一列相当于一个空格）
vim.opt_local.shiftwidth = 4
-- softtabstop 敲入tab键时实际占有的列数
vim.opt_local.softtabstop = 4
-- 一个tab键所占的列数，linux 内核代码建议每个tab占用8列
vim.opt_local.tabstop = 4
-- Set indentation *after* ftplugins
-- vim.api.nvim_command([[au FileType * setl expandtab< shiftwidth< softtabstop< tabstop<]])

