return {
        "ibhagwan/fzf-lua",
        dependencies = {
                "nvim-tree/nvim-web-devicons",
                "OXY2DEV/markview.nvim"
        },
        config = function()

                require("fzf-lua").setup({
                        files = {
                                cwd_prompt = false,
                                follow = true
                        },
                        grep = {
                                follow = true
                        }
                })
                local builtin = require("fzf-lua")

                vim.keymap.set("n", "<Leader>pf", builtin.files, {})
                vim.keymap.set("n", "<Leader>pg", builtin.live_grep, {})
                vim.keymap.set("n", "<C-p>", builtin.git_files, {})
                vim.keymap.set("n", "<Leader>pw", builtin.grep_cword, {})
                vim.keymap.set("n", "<Leader>pW", builtin.grep_cWORD, {})
                vim.keymap.set("n", "<Leader>vh", builtin.helptags, {})
        end
}
