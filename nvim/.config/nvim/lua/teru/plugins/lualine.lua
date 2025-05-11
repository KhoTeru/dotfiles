return {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
                options = {
                        theme = "tokyonight",
                },
                sections = {
                        lualine_a = {"mode"},
                        lualine_b = { { "buffers", symbols = { alternate_file = "", }}},
                        lualine_c = {"branch", "filename"},
                        lualine_x = {"fileformat", "filetype"},
                        lualine_y = {"progress"},
                        lualine_z = {"location"}
                },
        },
}
