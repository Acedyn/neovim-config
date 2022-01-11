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

	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]])
		end
	end,
})

vim.api.nvim_set_keymap("n", "<Leader>a", ":lua vim.lsp.buf.formatting()<CR>", { noremap = true })
