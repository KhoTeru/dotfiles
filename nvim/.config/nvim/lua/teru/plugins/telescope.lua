return {
        "nvim-telescope/telescope.nvim",
	tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
                require("telescope").setup({
                        defaults = {
                                prompt_prefix = "  ",
                                selection_caret = " 󱞩 "
                        }
                })
                local builtin = require("telescope.builtin")
                vim.keymap.set("n", "<Leader>pf", builtin.find_files, {})
                vim.keymap.set("n", "<Leader>pg", builtin.live_grep, {})
                vim.keymap.set("n", "<C-p>", builtin.git_files, {})
                vim.keymap.set("n", "<Leader>pw", function() local word = vim.fn.expand("<cword>") builtin.grep_string({ search = word }) end)
                vim.keymap.set("n", "<Leader>pW", function() local word = vim.fn.expand("<cWORD>") builtin.grep_string({ search = word }) end)
                vim.keymap.set("n", "<Leader>vh", builtin.help_tags, {})
        end
}
