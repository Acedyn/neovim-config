--[[########################################
Neovim barbar configuration file

author: LAMBIN Simon
email: simo.lambin@gmail.com
########################################]]

-- Move to previous/next
vim.api.nvim_set_keymap("n", "<C-h>", ":BufferPrevious<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", ":BufferNext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>bs", ":BufferOrderByDirectory<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>bc", ":BufferClose<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>bh", ":BufferCloseBuffersLeft<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>bl", ":BufferCloseBuffersRight<CR>", { noremap = true })
