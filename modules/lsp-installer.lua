--[[########################################
Neovim lsp-installer configuration file

author: LAMBIN Simon
email: simo.lambin@gmail.com
########################################]]

local lsp_installer = require("nvim-lsp-installer")

local black_fmt = { formatCommand = "black ${INPUT}", formatStdin = true }
local isort_fmt = { formatCommand = "isort ${INPUT}", formatStdin = true }
local yapf_fmt = { formatCommand = "yapf ${INPUT}", formatStdin = true }
local prettier_fmt = { formatCommand = 'prettier --stdin-filepath ${INPUT}', formatStdin = true }
local clang_fmt = { formatCommand = 'clang-format -style=LLVM ${INPUT}', formatStdin = true }
local stylua_fmt = { formatCommand = 'stylua -s -', formatStdin = true }

local languages = {
    cpp = { clang_fmt },
    python = { black_fmt },
    lua = { stylua_fmt },
    markdown = { prettier_fmt },
    html = { prettier_fmt },
    css = { prettier_fmt },
    scss = { prettier_fmt },
    json = { prettier_fmt },
    yaml = { prettier_fmt },
    javascript = { prettier_fmt },
    javascriptreact = { prettier_fmt },
    typescript = { prettier_fmt },
    typescriptreact = { prettier_fmt },
}

-- Register a handler that will be called for all installed servers.
lsp_installer.on_server_ready(function(server)
    local opts = {}

    if server.name == "efm" then
        opts = {
            init_options = {documentFormatting = true, codeAction = true},
            settings = {
                languages = languages,
                log_level = 10,
            },
            filetypes = vim.tbl_keys(languages),
        }
    end

    server:setup(opts)
end)
