--local function lint_on_save()
--vim.api.nvim_create_autocmd({ "BufWritePost" }, {
--callback = function()
--require("lint").try_lint()
--end,
--})
--end
require("config.linter.formater").setup()
local M = {}

function M.setup()
	require("lint").linter_by_ft = {
		python = { "pylint" },
		lua = { "luacheck" },
		c = { "cpplint" },
	}
	--lint_on_save()
end

return M
