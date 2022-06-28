--[[########################################
Neovim fterm configuration file

author: LAMBIN Simon
email: simo.lambin@gmail.com
########################################]]

options = {
	border = "double",
	dimensions = {
		height = 0.8,
		width = 0.8,
	},
}

if vim.fn.has("win") == 1 then
	options.cmd = "powershell"
end

require("FTerm").setup(options)

vim.api.nvim_set_keymap("n", "<Leader>t", '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<Esc>", '<CMD>lua require("FTerm").close()<CR>', { noremap = true, silent = true })
