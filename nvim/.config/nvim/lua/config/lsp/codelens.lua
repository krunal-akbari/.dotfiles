local M = {}
function M.test()
	local position = vim.lsp.util.make_position_params()
	--print(vim.inspect(position))
	--
	vim.lsp.buf_request(0, "textDocument/codeAction", position, function(err, result, ctx, ...)
		print(vim.inspect(ctx))
		--vim.lsp.codelenses.on_codelens(err, result, ctx, ...)
	end)
end

local function rust()
	vim.api.nvim_create_autocmd({ "BufWritePost" }, {
		pattern = { "*.rs" },
		callback = function()
			vim.lsp.codelens.refresh()
		end,
	})
	mapping("n", "<leader>run", ":lua vim.lsp.codelens.run()<cr>")
end

function M.setup()
	rust()
end

M.test()
return M
