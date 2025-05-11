return {
        {
                "mbbill/undotree",
                init = function()
                        vim.keymap.set("n", "<Leader>u", vim.cmd.UndotreeToggle)
                end
        },
}

