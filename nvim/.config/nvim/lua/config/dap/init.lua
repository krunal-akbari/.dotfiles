local dapui = require('config.dap.dapui')
local debugger = require('config.dap.debugger')
local M = {}

function M.setup()
    dapui.setup()
    debugger.setup()
end

return M
