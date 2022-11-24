local M = {}
local onattach = require("config.lsp.onattach")

function M.setup()
	require("mason-lspconfig").setup({
		onattach = onattach.on_attach,
	})
	require("lspconfig").pyright.setup({ onattach = onattach.on_attach })
	require("lspconfig").sumneko_lua.setup({ onattach = onattach.on_attach })
	require("lspconfig").bashls.setup({
		onattach = onattach.on_attach,
		filetypes = {
			"sh",
			"bash",
			"zsh",
		},
	})
	require("lspconfig").gopls.setup({ onattach = onattach.on_attach })
	require("lspconfig").clangd.setup({ onattach = onattach.on_attach })
	require("lspconfig").html.setup({ onattach = onattach.on_attach })
end

return M
