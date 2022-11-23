local function c()
	local dap = require("dap")
	dap.adapters.cppdbg = {
		id = "cppdbg",
		type = "executable",
		command = "/home/krunal/.dotfiles/extra/c/extension/debugAdapters/bin/OpenDebugAD7",
	}
	dap.configurations.cpp = {
		{
			name = "Launch file",
			type = "cppdbg",
			request = "launch",
			program = vim.fn.getcwd() .. "/" .. "a.out",
			cwd = "${workspaceFolder}",
			stopAtEntry = true,
		},
		{
			name = "Attach to gdbserver :1234",
			type = "cppdbg",
			request = "launch",
			MIMode = "gdb",
			miDebuggerServerAddress = "localhost:1234",
			miDebuggerPath = "/usr/bin/gdb",
			cwd = "${workspaceFolder}",
			program = vim.fn.getcwd() .. "/" .. "a.out",
		},
	}
	dap.configurations.c = dap.configurations.cpp
end
local function python()
	local dap = require("dap")
	dap.adapters.python = {
		type = "executable",
		command = "/usr/bin/python3.11",
		args = { "-m", "debugpy.adapter" },
	}
	dap.configurations.python = {
		{
			type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
			request = "launch",
			name = "Launch file",

			program = "${file}", -- This configuration will launch the current file if used.
			pythonPath = function()
				local cwd = vim.fn.getcwd()
				if vim.fn.executable(cwd .. "/usr/bin/python3.11") == 1 then
					return cwd .. "/venv/bin/python"
				elseif vim.fn.executable(cwd .. "/usr/bin/python3.11") == 1 then
					return cwd .. "/usr/bin/python3.11"
				else
					return "/usr/bin/python3.11"
				end
			end,
		},
	}
end

local function c()
	local dap = require("dap")
	dap.adapters.cppdbg = {
		id = "cppdbg",
		type = "executable",
		command = "/home/kishan/.dotfiles/extra/c/extension/debugAdapters/bin/OpenDebugAD7",
	}
	dap.configurations.cpp = {
		{
			name = "Launch file",
			type = "cppdbg",
			request = "launch",
			program = vim.fn.getcwd() .. "/" .. "a.out",
			cwd = "${workspaceFolder}",
			stopAtEntry = true,
		},
		{
			name = "Attach to gdbserver :1234",
			type = "cppdbg",
			request = "launch",
			MIMode = "gdb",
			miDebuggerServerAddress = "localhost:1234",
			miDebuggerPath = "/usr/bin/gdb",
			cwd = "${workspaceFolder}",
			program = vim.fn.getcwd() .. "/" .. "a.out",
		},
	}
	dap.configurations.c = dap.configurations.cpp
end

local M = {}

function M.setup()
	python()
	c()
end

return M
