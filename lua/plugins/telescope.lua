--[[########################################
Neovim telescope configuration file

author: LAMBIN Simon
email: simo.lambin@gmail.com
########################################]]

require("telescope").load_extension("projects")
require("telescope").load_extension("neoclip")

vim.api.nvim_set_keymap("n", "<Leader>ff", ":Telescope find_files<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>fg", ":Telescope live_grep<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>fb", ":Telescope buffers<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>fh", ":Telescope help_tags<cr>", { noremap = true })

vim.api.nvim_set_keymap("n", "<Leader>fd", ":Telescope lsp_document_symbols<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>fw", ":Telescope lsp_workspace_symbols<cr>", { noremap = true })

vim.api.nvim_set_keymap("n", "<Leader>fa", ":Telescope git_branches<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>fc", ":Telescope git_commits<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>fs", ":Telescope git_stash<cr>", { noremap = true })

vim.api.nvim_set_keymap("n", "<Leader>fp", ":Telescope projects<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>fr", ":Telescope neoclip<cr>", { noremap = true })
