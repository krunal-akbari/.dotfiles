vim.g.theprimeagen_colorscheme = "gruvbox"

function ColorMyPencils()
    vim.g.gruvbox_contrast_dark = "hard"
    vim.g.gruvbox_invert_selection = "0"
    vim.opt.background = "dark"

    vim.cmd("colorscheme " .. vim.g.theprimeagen_colorscheme)

    local hl = function(thing, opts)
        vim.api.nvim_set_hl(0, thing, opts)
    end

    hl("SignColumn", {
        bg = "#282828",
    })

    hl("ColorColumn", {
        ctermbg = 0,
        bg = "#00ADB5",
    })

    hl("CursorLineNR", {
        bg = "#283928",
    })
    hl("Normal", {
        bg = "white",
    })

    hl("LineNr", {
        fg = "#00ADB5",
    })

    hl("netrwDir", {
        fg = "#00ADB5",
    })

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
