-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- shadow default indent
-- opt.shiftwidth = 2
-- opt.tabstop = 2
-- opt.softtabstop = 2

opt.background = "dark"
opt.timeoutlen = 300

