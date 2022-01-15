--[[########################################
Neovim lsp-installer configuration file

author: LAMBIN Simon
email: simo.lambin@gmail.com
########################################]]

-- Register a handler that will be called for all installed servers.
require("nvim-lsp-installer").on_server_ready(function(server)
	local opts = {}
    opts.on_attach = function(client, bufnr) 
        -- Disable formatting of tsserver
        if client.name == "tsserver" then
            client.resolved_capabilities.document_formatting = false
        end
    end

	server:setup(opts)
end)
