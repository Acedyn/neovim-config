--[[########################################
Neovim lsp-installer configuration file

author: LAMBIN Simon
email: simo.lambin@gmail.com
########################################]]

-- Register a handler that will be called for all installed servers.
require("nvim-lsp-installer").on_server_ready(function(server)
	local opts = {}
	opts.on_attach = function(client, bufnr)
		-- Disable formatting in favor of null-ls
		if client.name ~= "null-ls" then
			client.server_capabilities.documentFormattingProvider = false
		end
	end

	server:setup(opts)
end)
