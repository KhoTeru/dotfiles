return {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
                style = "storm",
                transparent = false,
                on_colors = function(colors)
                        local num = tonumber(colors.bg:gsub("^#", ""), 16)
                        colors.bg = string.format("#%06x", num + 1)
                end,
        },
        config = function(_, opts)
                require("tokyonight").setup(opts)
                vim.cmd("colorscheme tokyonight")
        end,
}
