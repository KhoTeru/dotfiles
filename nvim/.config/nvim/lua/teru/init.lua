require("teru.set")
require("teru.remap")
require("teru.lazy")

local autocmd = vim.api.nvim_create_autocmd

-- Deletes whitespace after end of lines on every document
autocmd({"BufWritePre"}, {
        pattern = "*",
        command = [[%s/\s\+$//e]],
})

-- Conceal level for Neorg files
autocmd({"BufEnter", "BufWinEnter"}, {
        pattern = "*.norg",
        command = "set conceallevel=3"
})

-- LSP Stuff
autocmd("LspAttach", {
        callback = function(e)
                local opts = { buffer = e.buf }
                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                vim.keymap.set("n", "<Leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
                vim.keymap.set("n", "<Leader>vca", function() vim.lsp.buf.code_action() end, opts)
                vim.keymap.set("n", "<Leader>vrr", function() vim.lsp.buf.references() end, opts)
                vim.keymap.set("n", "<Leader>vrn", function() vim.lsp.buf.rename() end, opts)
                vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        end
})
