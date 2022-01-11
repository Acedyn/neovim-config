--[[########################################
Neovim lsp-config configuration file

author: LAMBIN Simon
email: simo.lambin@gmail.com
########################################]]

vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = false,
})

-- Show diagnostic on hover
vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])
