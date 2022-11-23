require("mason").setup()
require("mason-lspconfig").setup()
require("config.lsp").setup() -- lsp/init.lua
require("config.dap").setup() -- dap/init.lua
require("config.treesitter").setup() -- treesitter/init.lua
require("config.linter").setup() -- linter/init.lua
require("config.go").setup() --go/init.go
