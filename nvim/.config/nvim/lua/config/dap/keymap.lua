function keymap()
    map("n", "<leader>b", "<cmd>lua require('dap').toggle_breakpoint()<cr>", { silent = false })
    map("n", "<leader>B", "<cmd>lua require('dap').set_breakpoint(vim.fn.input('BreakPoint Condition :'))<cr>",
        { silent = false })
    map("n", "<F9>", "<cmd>lua require('dap').continue()<cr>", { silent = false })
    map("n", "<leader>0", "<cmd>lua require('dapui').toggle()<cr>", { silent = false })
    map("n", "<leader>1", "<cmd>lua require('dap').step_over()<cr>", { silent = false })
    map("n", "<leader>2", "<cmd>lua require('dap').step_into()<cr>", { silent = false })
    map("n", "<leader>3", "<cmd>lua require('dap').step_out()<cr>", { silent = false })
end

local M = {}
function M.setup()
    keymap()
end

return M
