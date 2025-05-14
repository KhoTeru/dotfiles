return {
        "folke/trouble.nvim",
        branch = "main",
        config = function()
                require("trouble").setup()
                vim.keymap.set("n", "<Leader>tt", ":Trouble diagnostics toggle<Enter>")
        end
}
