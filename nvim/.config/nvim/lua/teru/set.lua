-- Leader and LocalLeader mappings
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Appearance and functioning
vim.opt.guicursor = ""
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 20
vim.opt.smartindent = true
vim.opt.wrap = false

-- Tabs
-- vim.opt.softtabstop = 8
-- vim.opt.expandtab = true

-- Important files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("XDG_STATE_HOME") .. "/nvim/undodir"
vim.opt.undofile = true
vim.opt.updatetime = 50
vim.opt.timeoutlen = 3000

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Others
vim.g.netrw_banner = 0 -- Disable netrw banner
