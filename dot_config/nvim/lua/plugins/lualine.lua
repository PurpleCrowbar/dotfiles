require("lualine").setup({
    options = {
        theme = "ayu_mirage",
        section_separators = "",
        component_separators = "",
    },
    sections = {
        lualine_b = { "branch", "diff" },
        lualine_c = {
            { "filename", path = 1 }
        },
        lualine_x = {
            "diagnostics",
            { "filetype", icon_only = true }
        },
    },
})
