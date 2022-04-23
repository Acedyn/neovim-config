local api = vim.api   -- Get api for keymaps

-- Change leader to space
vim.g.mapleader = ' '

-- Remap backspace in insert to remove word
vim.api.nvim_set_keymap('i', '<C-H>', '<C-W>', {noremap = true})

-- Use the black hole register for delete and modify
vim.cmd('nnoremap d "_d')
vim.cmd('vnoremap d "_d')
vim.cmd('nnoremap c "_c')
vim.cmd('vnoremap c "_c')

-- Move the screen instead of the cursor with the srollwheel
vim.cmd('map <ScrollWheelUp> <C-Y>')
vim.cmd('map <ScrollWheelDown> <C-E>')

-- Paste over text as many times as we want
vim.cmd('xnoremap <expr> p \'pgv"\'.v:register\'y`>\'')
vim.cmd('xnoremap <expr> P \'Pgv"\'.v:register.\'y`>\'')

-- Move lines around in visual mode
vim.cmd('vnoremap <A-j> :m \'>+1<CR>gv=gv')
vim.cmd('noremap <A-k> :m \'<-2<CR>gv=gv')
vim.cmd('vnoremap <A-h> <gv')
vim.cmd('noremap <A-l> >gv')
