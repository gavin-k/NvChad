local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt,
  b.formatting.prettier,

  -- Lua
  b.formatting.stylua,

  b.formatting.phpcsfixer.with {
    filetypes = { "php" },
    -- extra_args = { "--config=$ROOT/.php_cs.dist" },
    extra_args = { "--config", vim.fn.expand "~/.php-cs-fixer.dist" },
    timeout_ms = 5000,
  },
  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

-- null_ls.setup {
--   debug = true,
--   sources = sources,
-- }
--
-- local null_ls = require "null-ls"
--
-- local formatting = null_ls.builtins.formatting

local M = {}

M.setup = function()
  null_ls.setup {
    -- sources = {
    --   b.formatting.stylua.with { filetypes = { "lua" } },
    --   b.formatting.phpcsfixer.with { filetypes = { "php" } },
    --   b.formatting.prettier.with {
    --     filetypes = { "html", "markdown", "css", "typescript", "javascript", "json", "svelte" },
    --   },
    --   -- formatting.autopep8.with { filetypes = { "python" } },
    --   -- formatting.gofmt.with { filetypes = { "go" } },
    --   -- formatting.clang_format,
    -- },
    debug = true,
    sources = sources,
    on_attach = function(client)
      if client.server_capabilities.documentFormattingProvider then
        vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.format()"
      end
    end,
  }
end

return M
