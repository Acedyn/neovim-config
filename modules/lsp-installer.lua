--[[########################################
Neovim lsp-installer configuration file

author: LAMBIN Simon
email: simo.lambin@gmail.com
########################################]]

-- Register a handler that will be called for all installed servers.
require("nvim-lsp-installer").on_server_ready(function(server)
    local opts = {}

    server:setup(opts)
end)
