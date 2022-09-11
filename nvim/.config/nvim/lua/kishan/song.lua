local maps = require("kishan.map")
local term_no = 0

local function send_command(commmand)
	term_no = term_no or 0
	require("harpoon.term").sendCommand(term_no, commmand .. "\n")
end

local function play_song(content)
	send_command("mplayer " .. content)
end

local function Songs(bufnr, map)
	local function songs_list(close)
		local content = require("telescope.actions.state").get_selected_entry(bufnr)
		print(content)
		if close then
			require("telescope.actions").close(bufnr)
		end
		play_song(content.cwd .. "/" .. '"' .. content.value .. '"')
	end

	map("i", "<C-p>", function()
		songs_list()
	end)

	map("i", "<CR>", function()
		songs_list(true)
	end)
end

local function list_song(cwd)
	require("telescope.builtin").find_files({
		prompt_title = "< Songs >",
		cwd = cwd,
		hidden = true,
		attach_mappings = function(prompt_bufnr, map)
			Songs(prompt_bufnr, map)
			return true
		end,
	})
end

local M = {}

function M.list_song()
	M.stop_song()
	list_song("~/Music/song/")
end

function M.stop_song()
	send_command("q\n")
end

M.play_list = function()
	list_song("~/Music/song/playlist")
end

function M.setup()
	local function installation()
		require("harpoon.term").sendCommand(1, "sudo apt install mplayer \n")
		require("harpoon.term").sendCommand(1, "kishan\n")
	end
	installation()
end

local function map()
	mapping("n", "<F6>", "<cmd>lua require('kishan.song').list_song()<cr>", { silent = true })
	mapping("n", "<leader>stop", "<cmd>lua require('kishan.song').send_command('clear')<cr>", { silent = true })

	vim.api.nvim_create_user_command("SongStart", ":lua require('kishan.song').list_song()<cr>", {})
	vim.api.nvim_create_user_command("SongStop", ":lua require('kishan.song').stop_song()<cr>", {})
	vim.api.nvim_create_user_command("PlayList", ":lua require('kishan.song').play_list()<cr>", {})
end

M.send_command = function(commmand)
	send_command(commmand)
end

map()
return M
