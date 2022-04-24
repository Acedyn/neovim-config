--[[########################################
Neovim lualine configuration file

author: LAMBIN Simon
email: simo.lambin@gmail.com
########################################]]

vim.api.nvim_set_keymap("n", "<leader>gh", ":diffget //2<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>gl", ":diffget //3<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>gg", ":Git<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>gd", ":Gdiffsplit<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>gc", ":Git commit<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>gp", ":Git push<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>gb", ":Git blame<CR>", {})
