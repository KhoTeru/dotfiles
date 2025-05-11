return {
        "stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
        opts = {
                delete_to_trash = true,
                view_options = { show_hidden = true },
                --        keymaps = {
                --            ["g?"] = "actions.show_help",
                --            ["<CR>"] = "actions.select",
                --            ["<C-s>"] = "actions.select_vsplit",
                --            ["<C-h>"] = "actions.select_split",
                --            ["<C-t>"] = "actions.select_tab",
                --            ["<C-p>"] = "actions.preview",
                --            ["<C-c>"] = "actions.close",
                --            ["<C-l>"] = "actions.refresh",
                --            ["-"] = "actions.parent",
                --            ["_"] = "actions.open_cwd",
                --            ["`"] = "actions.cd",
                --            ["~"] = "actions.tcd",
                --            ["gs"] = "actions.change_sort",
                --            ["gx"] = "actions.open_external",
                --            ["g."] = "actions.toggle_hidden",
                --            ["g\\"] = "actions.toggle_trash",
                --        },
        },
        dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
        config = function(_, opts)
                require("oil").setup(opts)
                vim.keymap.set("n", "<leader>pv", vim.cmd.Oil)
        end
}
