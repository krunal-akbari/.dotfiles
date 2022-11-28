local augroup_highlight = vim.api.nvim_create_augroup("custom-lsp-references", { clear = true })
local augroup_codelens = vim.api.nvim_create_augroup("custom-lsp-codelens", { clear = true })
local augroup_format = vim.api.nvim_create_augroup("custom-lsp-format", { clear = true })
local augroup_semantic = vim.api.nvim_create_augroup("custom-lsp-semantic", { clear = true })

local autocmd = require("kishan.auto").autocmd
local autocmd_clear = vim.api.nvim_clear_autocmds

local autocmd_format = function(async, filter)
	vim.api.nvim_clear_autocmds({ buffer = 0, group = augroup_format })
	vim.api.nvim_create_autocmd("BufWritePre", {
		buffer = 0,
		callback = function()
			vim.lsp.buf.format({ async = async, filter = filter })
		end,
	})
end

local filetype_attach = setmetatable({
	go = function()
		autocmd_format(false)
	end,

	scss = function()
		autocmd_format(false)
	end,

	css = function()
		autocmd_format(false)
	end,

	rust = function()
		autocmd_format(false)
	end,

	racket = function()
		autocmd_format(false)
	end,

	typescript = function()
		autocmd_format(false, function(client)
			return client.name ~= "tsserver"
		end)
	end,
}, {
	__index = function()
		return function() end
	end,
})
local M = {}

M.on_attach = function(client, bufnr)
	-- Enable completion triggered by <c-x><c-o>
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
	vim.keymap.set("n", ",wa", vim.lsp.buf.add_workspace_folder, bufopts)
	vim.keymap.set("n", ",wr", vim.lsp.buf.remove_workspace_folder, bufopts)
	vim.keymap.set("n", ",wl", function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, bufopts)
	vim.keymap.set("n", ",D", vim.lsp.buf.type_definition, bufopts)
	vim.keymap.set("n", ",rn", vim.lsp.buf.rename, bufopts)
	vim.keymap.set("n", ",ca", vim.lsp.buf.code_action, bufopts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
	vim.keymap.set("n", ",f", vim.lsp.buf.formatting, bufopts)
end

return M
