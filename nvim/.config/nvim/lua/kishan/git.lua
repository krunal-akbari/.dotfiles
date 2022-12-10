function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local neogit = require("neogit")

neogit.setup({
    disable_signs = false,
    disable_hint = false,
    disable_context_highlighting = false,
    disable_commit_confirmation = false,
    -- Neogit refreshes its internal state after specific events, which can be expensive depending on the repository size.
    -- Disabling `auto_refresh` will make it so you have to manually refresh the status after you open it.
    auto_refresh = true,
    disable_builtin_notifications = false,
    use_magit_keybindings = false,
    -- Change the default way of opening neogit
    kind = "tab",
    -- Change the default way of opening the commit popup
    commit_popup = {
        kind = "split",
    },
    -- Change the default way of opening popups
    popup = {
        kind = "split",
    },
    -- customize displayed signs
    signs = {
        -- { CLOSED, OPENED }
        section = { ">", "v" },
        item = { ">", "v" },
        hunk = { "", "" },
    },
    integrations = {
        -- Neogit only provides inline diffs. If you want a more traditional way to look at diffs, you can use `sindrets/diffview.nvim`.
        -- The diffview integration enables the diff popup, which is a wrapper around `sindrets/diffview.nvim`.
        --
        -- Requires you to have `sindrets/diffview.nvim` installed.
        -- use {
        --   'TimUntersberger/neogit',
        --   requires = {
        --     'nvim-lua/plenary.nvim',
        --     'sindrets/diffview.nvim'
        --   }
        -- }
        --
        diffview = false,
    },
    -- Setting any section to `false` will make the section not render at all
    sections = {
        untracked = {
            folded = true,
        },
        unstaged = {
            folded = true,
        },
        staged = {
            folded = true,
        },
        stashes = {
            folded = true,
        },
        unpulled = {
            folded = true,
        },
        unmerged = {
            folded = true,
        },
        recent = {
            folded = true,
        },
    },
    -- override/add mappings
    mappings = {
        -- modify status buffer mappings
        status = {
            -- Adds a mapping with "B" as key that does the "BranchPopup" command
            ["B"] = "BranchPopup",
            -- Removes the default mapping of "s"
            ["s"] = "",
        },
    },
})
--mapping
map("n", "<leader>g", ":Neogit<cr>", { silent = true })

map(
    "n",
    "<leader>gw",
    ":lua require('telescope').extensions.git_worktree.git_worktrees(require('telescope.themes').get_cursor())<CR>",
    { silent = true }
)
map(
    "n",
    "<leader>cgw",
    "<cmd> lua require('telescope').load_extension('git_worktree').create_git_worktree(require('telescope.themes').get_dropdown())<Cr>"
    ,
    { silent = true }
)

local group = vim.api.nvim_create_augroup("MyCustomNeogitEvents", { clear = true })
vim.api.nvim_create_autocmd("User", {
    pattern = "NeogitPushComplete",
    group = group,
    callback = require("neogit").close,
})
vim.cmd([[hi NeogitNotificationInfo guifg=#80ff95
hi NeogitNotificationWarning guifg=#fff454
hi NeogitNotificationError guifg=#c44323
]])

vim.cmd([[hi def NeogitDiffAddHighlight guibg=#404040 guifg=#859900
hi def NeogitDiffDeleteHighlight guibg=#404040 guifg=#dc322f
hi def NeogitDiffContextHighlight guibg=#333333 guifg=#b2b2b2
hi def NeogitHunkHeader guifg=#cccccc guibg=#404040
hi def NeogitHunkHeaderHighlight guifg=#cccccc guibg=#4d4d4d]])
