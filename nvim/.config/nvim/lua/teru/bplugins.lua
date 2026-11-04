-- Undotree plugin and keybind
vim.cmd("packadd nvim.undotree")
vim.keymap.set("n", "<Leader>u", require("undotree").open)
