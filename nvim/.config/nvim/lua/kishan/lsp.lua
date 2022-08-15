--local sumneko_root_path = "/home/kishan//servers//lua-language-server"
--local sumneko_binary = sumneko_root_path .. "/bin/lua-language-server"
require("mason").setup({})

local sumneko_root_path = "/home/kishan/.installation/servers/lua/lua-language-server"
local sumneko_binary = sumneko_root_path .. "/bin/lua-language-server"
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', ',wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', ',wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', ',wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', ',D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', ',rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', ',ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', ',f', vim.lsp.buf.formatting, bufopts)
end


require("lspconfig").sumneko_lua.setup({
    on_attach = on_attach,
    cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" },
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                diagnostics = {
                    globals = { "vim" }
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

require("lspconfig").pyright.setup({
    on_attach = on_attach,
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
                useLibraryCodeForTypes = true
            },
        },
    },
    single_file_support = true
})
require("lspconfig").gopls.setup({
    on_attach = on_attach,
    cmd = { "gopls", "serve" }, settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
})

require('lspconfig').bashls.setup {
    on_attach = on_attach,
}
