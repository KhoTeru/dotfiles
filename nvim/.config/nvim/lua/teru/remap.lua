-- Move lines in Visual mode
vim.keymap.set("v", "J", ":m '>+1<Enter>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<Enter>gv=gv")

-- Append line below to current one without moving the cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Move pages while keeping the cursor on the center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor on the middle while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Keep buffer after pasting
vim.keymap.set("x", "<Leader>p", "\"_dP")

-- Yank into system"s clipboard. LET"S GOOO
vim.keymap.set({"n", "v"}, "<Leader>y", '"+y')
vim.keymap.set("n", "<Leader>Y", '"+Y')

-- Equals Ctrl + c and Esc
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Better (? mapping for saving/closing a document
vim.keymap.set("n", "<Leader>w", ":w<Enter>")
vim.keymap.set("n", "<Leader>q", ":q<Enter>")
vim.keymap.set("n", "<Leader>Q", ":q!<Enter>")

-- Buffer bindings
vim.keymap.set("n", "th", ":bprev<Enter>")
vim.keymap.set("n", "tl", ":bnext<Enter>")
vim.keymap.set("n", "td", ":bdelete<Enter>")
vim.keymap.set("n", "tn", ":enew<Enter>")
