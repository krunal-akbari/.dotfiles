local dapui = require("config.dap.dapui")
local debugger = require("config.dap.debugger")
local keymap = require("config.dap.keymap")
local M = {}

function M.setup()
	dapui.setup()
	debugger.setup()
	keymap.setup()
end

return M
