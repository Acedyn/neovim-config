--[[########################################
Confortable motion configuration file

author: LAMBIN Simon
email: simo.lambin@gmail.com
########################################]]

local g = vim.g

g.comfortable_motion_no_default_key_mappings = 1
g.comfortable_motion_scroll_down_key = "j"
g.comfortable_motion_scroll_up_key = "k"

vim.api.nvim_set_keymap("n", "<C-j>", ":call comfortable_motion#flick(150)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", ":call comfortable_motion#flick(-150)<CR>", { noremap = true, silent = true })
