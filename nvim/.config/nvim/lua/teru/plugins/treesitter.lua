return {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
                ensure_installed = { "vim", "vimdoc", "bash", "lua", "c", "python" },
                sync_install = false,
                auto_install = true,
                highlight = {
                        enable = true,
                        additional_vim_regex_highlighting = { "markdown" },
                },
                indent = { enable = true },
        },
        config = function(_, opts)
                require("nvim-treesitter.configs").setup(opts)
                vim.filetype.add({ pattern = { [".*/hypr/.*%.conf"] = "hyprlang" }, })
        end,
}
