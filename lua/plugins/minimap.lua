--[[########################################
Neovim minimap configuration file

author: LAMBIN Simon
email: simo.lambin@gmail.com
########################################]]

local g = vim.g

g.minimap_width = 15
g.minimap_auto_start = 1
g.minimap_auto_start_win_enter = 1
g.minimap_close_filetypes = {'startify', 'netrw', 'vim-plug', "NvimTree", "TelescopePrompt"}
