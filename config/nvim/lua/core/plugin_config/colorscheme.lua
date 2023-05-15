vim.o.termguicolors = true
-- vim.cmd [[ colorscheme kanagawa-dragon]]
-- require("kanagawa").load("dragon")
vim.cmd('colorscheme github_dark_colorblind')
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
