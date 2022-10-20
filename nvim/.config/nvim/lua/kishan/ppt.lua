local M = {}

M.disable_ui = function(enable)
	vim.cmd("LspStop")
	if enable then
		M.initial = {
			showtabline = vim.opt.showtabline,
			laststatus = vim.opt.laststatus,
			number = vim.opt.number,
			relativenumber = vim.opt.relativenumber,
			signcolumn = vim.opt.signcolumn,
			ruler = vim.opt.ruler,
			cursorline = vim.opt.cursorline,
			cursorcolumn = vim.opt.cursorcolumn,
		}
	end
	vim.opt.showtabline = 0
	vim.opt.laststatus = 1
	vim.cmd([[ echo '' ]])
	vim.opt.number = false
	vim.opt.relativenumber = false
	vim.opt.signcolumn = "no"
	vim.opt.ruler = false
	vim.opt.cursorline = false
	vim.opt.cursorcolumn = false
	if not enable then
		vim.opt.showtabline = M.initial.showtabline
		vim.opt.laststatus = M.initial.laststatus
		vim.opt.number = M.initial.number
		vim.opt.relativenumber = M.initial.relativenumber
		vim.opt.signcolumn = M.initial.signcolumn
		vim.opt.ruler = M.initial.ruler
	end
end

M.ditectoor = {
	index = "***",
	heading = "#",
	secondHeading = "##",
	point = "",
}

M.presentetion = function(enable)
	M.disable_ui(enable)
end

M.commands = function()
	vim.api.nvim_create_user_command("PresentEnable", function()
		M.presentetion(true)
	end, {})
	vim.api.nvim_create_user_command("PresentDisable", function()
		M.presentetion(false)
	end, {})
end

M.setup = function()
	M.commands()
end

return M
