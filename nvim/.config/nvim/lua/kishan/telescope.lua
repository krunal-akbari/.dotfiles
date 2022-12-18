local actions = require("telescope.actions")
require("telescope").load_extension("coc")
require("telescope").load_extension("git_worktree")
require("telescope").load_extension("refactoring")

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- map("n","","",{silent = true})

-- some basic mapping for show file
map(
    "n",
    "<C-p>",
    "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown())<cr>",
    { silent = true }
)
map(
    "n",
    "<leader>i",
    "<cmd>lua require('telescope.builtin').git_files(require('telescope.themes').get_ivy())<cr>",
    { silent = true }
)
map(
    "n",
    "<leader>lg",
    "<cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_ivy())<cr>",
    { silent = true }
)
map("n", "<leader>vrc", "<cmd>lua require('kishan.telescope').search_dotfile()<cr>")

--help setting
--map("n","","",{silent = true})

require("telescope").setup({
    defaults = {
        sorting_strategy = "ascending",
        color_devicons = true,

        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
            },
        },
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
    },
})

map(
    "n",
    "<leader>5",
    "<cmd> lua require('telescope.builtin').diagnostics(require('telescope.themes').get_dropdown())<cr>",
    { silent = false }
)

--extra plugins for telescope
require("telescope").load_extension("harpoon")
require("telescope").load_extension("dap")

local M = {}
M.search_dotfile = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRc >",
        cwd = "~/.dotfiles/",
        hidden = true,
    })
end

local function set_background(content)
    vim.cmd(":silent !feh --bg-fill " .. content .. "\n")
end

local function select_background(prompt_bufnr, map)
    local function set_the_background(close)
        local content = require("telescope.actions.state").get_selected_entry(prompt_bufnr)
        set_background(content.cwd .. "/" .. content.value)
        if close then
            require("telescope.actions").close(prompt_bufnr)
        end
    end

    map("i", "<C-p>", function()
        set_the_background()
    end)

    map("i", "<CR>", function()
        set_the_background(true)
    end)
end

local function image_selector(prompt, cwd)
    return function()
        require("telescope.builtin").find_files({
            prompt_title = prompt,
            cwd = cwd,
            attach_mappings = function(prompt_bufnr, map)
                select_background(prompt_bufnr, map)
                return true
            end,
        })
    end
end

M.anime_selector = image_selector("< Anime Bobs > ", "~/Personal/anime")

return M
