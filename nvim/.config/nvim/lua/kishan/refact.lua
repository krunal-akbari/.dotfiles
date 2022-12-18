require("refactoring").setup({
    prompt_func_return_type = {
        go = true,
        java = true,
        python = true,
        lua = true,

        cpp = true,
        c = true,
        h = true,
        hpp = true,
        cxx = true,
    },
    prompt_func_param_type = {
        go = true,
        java = true,
        python = true,

        cpp = true,
        c = true,
        h = true,
        hpp = true,
        cxx = true,
        lua = true,
    },
    printf_statements = {},
    print_var_statements = {},
})
