local server   = require('config.lsp.servers')
local codelens = require('config.lsp.codelens')
local M        = {}

function M.setup()
    server.setup()
    codelens.setup()
end

return M
