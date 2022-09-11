require("mason").setup({})
local onattach = require("config.lsp.onattach")
local function lua()
	local sumneko_root_path = "/home/kishan/.installation/servers/lua/lua-language-server"
	local sumneko_binary = sumneko_root_path .. "/bin/lua-language-server"

	require("lspconfig").sumneko_lua.setup({
		on_attach = onattach.on_attach,
		cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" },
		settings = {
			Lua = {
				runtime = {
					-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
					diagnostics = {
						globals = { "vim" },
					},
					version = "LuaJIT",
					-- Setup your lua path
					path = vim.split(package.path, ";"),
				},
				diagnostics = {
					-- Get the language server to recognize the `vim` global
					globals = { "vim" },
				},
				workspace = {
					-- Make the server aware of Neovim runtime files
					library = {
						[vim.fn.expand("$VIMRUNTIME/lua")] = true,
						[vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
					},
				},
			},
		},
	})
end

local function pyright()
	--require("lspconfig").pyright.setup({})
	require("lspconfig").pyright.setup({
		on_attach = onattach.on_attach,
		cmd = { "pyright-langserver", "--stdio" },
		filetypes = { "python" },
		--root_dir = function(startpath)
		--       return M.search_ancestors(startpath, matcher)
		--  end,
		settings = {
			python = {
				analysis = {
					autoSearchPaths = true,
					diagnosticMode = "workspace",
					useLibraryCodeForTypes = true,
				},
			},
		},
		single_file_support = true,
	})
end

local function golan()
	require("lspconfig").gopls.setup({
		on_attach = onattach.on_attach,
		codelenses = {
			generate = true,
			gc_details = true,
		},
		cmd = { "gopls", "serve" },
		settings = {
			gopls = {
				analyses = {
					unusedparams = true,
				},
				staticcheck = true,
			},
		},
	})
end

local function bash()
	require("lspconfig").bashls.setup({
		on_attach = onattach.on_attach,
	})
end

local function rust()
	require("lspconfig").rust_analyzer.setup({})
end
local function html()
	require("lspconfig").html.setup({})
end

local M = {}

function M.setup()
	lua()
	pyright()
	golan()
	bash()
	rust()
	html()
end

return M
