--[[########################################
Neovim fterm configuration file

author: LAMBIN Simon
email: simo.lambin@gmail.com
########################################]]

require('FTerm').setup({
    border = 'double',
    dimensions  = {
        height = 0.8,
        width = 0.8,
    },
    cmd = "powershell",
})

vim.api.nvim_set_keymap('n', '<Leader>t', '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
