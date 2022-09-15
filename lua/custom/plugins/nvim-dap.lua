local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

require('dap').set_log_level('DEBUG')


require'custom.daps.php'

-- require'custom.daps.rust'
--
-- require'custom.daps.python'
--
-- require'custom.daps.go'
