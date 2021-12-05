--[[########################################
Neovim lsp-installer configuration file

author: LAMBIN Simon
email: simo.lambin@gmail.com
########################################]]

local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for all installed servers.
lsp_installer.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)
