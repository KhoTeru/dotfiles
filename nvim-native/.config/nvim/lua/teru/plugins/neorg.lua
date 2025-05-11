return {
        "nvim-neorg/neorg",
	enabled = false, -- Change this to toggle Neorg
        dependencies = { "luarocks.nvim", "nvim-lua/plenary.nvim", "nvim-neorg/neorg-telescope" },
        version = "*",
        config = true,
        opts = {
                load = {
                        ["core.defaults"] = {},
                        ["core.concealer"] = {
                                config = {
                                        folds = false
                                }
                        },
                        ["core.keybinds"] = {
                                config = {
                                        hook = function(keybinds)
                                                keybinds.map("norg", "n", "<LocalLeader>lg", ":Neorg keybind all core.looking-glass.magnify-code-block<Enter>")
                                                keybinds.map("norg", "n", "<LocalLeader>T", ":Neorg toc<Enter>")
                                                keybinds.map("norg", "n", "<LocalLeader>pf", ":Telescope neorg find_norg_files<Enter>")
                                                keybinds.map("norg", "n", "<LocalLeader>nw", ":Neorg workspace ")
                                        end
                                }
                        },
                        ["core.dirman"] = {
                                config = {
                                        workspaces = {
                                                main = "~/Syncthing/Documents/Alejandro/Personal/Notes",
                                                atlantic = "~/Syncthing/Documents/Alejandro/Work/Atlantic/Notes"
                                        },
                                        default_workspace = "main"
                                }
                        },
                        ["core.export"] = {},
                        ["core.integrations.telescope"] = {},
                }
        }
}
