local context = require('config.treesitter.context')
local function main()

    require 'nvim-treesitter.configs'.setup {
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        incremental_selection = {
            enable = true,
        },
    }
end

local M = {}

function M.setup()
    main()
    context.setup()
end

return M
