local M = {}

M.setup = function()
	-- Utilities for creating configurations
	local util = require("formatter.util")

	-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
	require("formatter").setup({
		logging = true,
		log_level = vim.log.levels.WARN,
		filetype = {
			lua = {
				require("formatter.filetypes.lua").stylua,
			},
			python = {
				require("formatter.filetypes.python").autopep8,
			},
		},
	})
end

return M
