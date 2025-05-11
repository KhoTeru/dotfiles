--[[
local transparency = function()
        vim.api.nvim_set_hl(0, "Normal", { bg = none})
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = none})
end
return {
     "rose-pine/neovim",
     name = "rose-pine",
     lazy = false,
     priority = 1000,

     config = function()
         vim.cmd("colorscheme rose-pine")
--       transparency()
     end,
}
--]]

---[[
return {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
                style = "storm",
                transparent = false,
                on_colors = function(colors)
                        local num = tonumber(colors.bg:gsub("^#", ""), 16)
                        colors.bg = string.format("#%06x", num + 1)
                end,
        },
        config = function(_, opts)
                require("tokyonight").setup(opts)
                vim.cmd("colorscheme tokyonight")
        end,
}
--]]
