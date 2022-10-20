local method = "manual"
local type = vim.bo.filetype

if type == "lua" or type == "python" then
	method = "indent"
elseif type == "java" then
	method = "manual"
end

vim.opt.foldmethod = method

mapping("v", "<leader>f", "zf")

-- gui
vim.cmd("highlight Folded guibg=#99C0CB guifg=black")
-- highlight Folded guibg=#99C0CB guifg=black
