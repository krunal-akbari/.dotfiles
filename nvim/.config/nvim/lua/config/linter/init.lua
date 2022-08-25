require("config.linter.formater").setup()
local M = {}

function M.setup()
	require("lint").linter_by_ft = {
		python = { "pylint" },
		lua = { "luacheck" },
	}
	vim.api.nvim_create_autocmd({ "BufWritePost" }, {
		callback = function()
			require("lint").try_lint()
		end,
	})
end

return M
