local server = require("config.lsp.servers")
local codelens = require("config.lsp.codelens")
local M = {}

function M.setup()
	server.setup()
	codelens.run()
	require("config.lsp.completion")
	vim.cmd([[copilot enable]])
end

return M
