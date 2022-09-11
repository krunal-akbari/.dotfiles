local method = nil
local type = vim.bo.filetype

if type == "lua" then
	method = "manual"
elseif type == "python" then
	method = "indent"
else
	method = "manual"
end

--vim.opt.foldmethod = method
