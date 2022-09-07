local present, dap = pcall(require, "dap")

if not present then
  return
end

require'custom.dap.php'

-- require'custom.dap.rust'
--
-- require'custom.dap.python'
--
-- require'custom.dap.go'
