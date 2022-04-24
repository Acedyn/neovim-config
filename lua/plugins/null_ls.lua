--[[########################################
Neovim null-ls configuration file

author: LAMBIN Simon
email: simo.lambin@gmail.com
########################################]]

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = require("null-ls").builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = require("null-ls").builtins.diagnostics

require("null-ls").setup({
	debug = false,
	sources = {
		formatting.prettier,
		formatting.clang_format,
		formatting.cmake_format,
		formatting.stylua,
		formatting.black,
		formatting.isort.with({ extra_args = { "--profile", "black" } }),

		diagnostics.eslint,
		diagnostics.markdownlint,
		diagnostics.cppcheck,
		diagnostics.yamllint,
		diagnostics.pylint.with({ extra_args = { "--persistent", "no" } }),
	},
})

vim.api.nvim_set_keymap("n", "<Leader>a", ":lua vim.lsp.buf.formatting()<CR>", { noremap = true })
vim.api.nvim_create_autocmd({ "BufWritePre" }, { pattern = "*", command = "lua vim.lsp.buf.formatting()" })
