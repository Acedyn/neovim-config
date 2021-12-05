--[[########################################
Neovim comment configuration file

author: LAMBIN Simon
email: simo.lambin@gmail.com
########################################]]

vim.api.nvim_set_keymap('v', '<Leader>c', ':CommentToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>c', ':CommentToggle<CR>', {noremap = true})

require('nvim_comment').setup({
    comment_empty = false,
    create_mappings = false,
})
