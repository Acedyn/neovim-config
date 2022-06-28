-- Initialize the settings specific to vim itself
require("core.options")
require("core.keymaps")

-- Load all the plugins with packer
require("packer_init")

-- Plugin specific configuration
require("plugins.barbar")
require("plugins.lualine")
require("plugins.nvim_tree")
require("plugins.comfortable_motion")
require("plugins.telescope")
require("plugins.project")
require("plugins.neoclip")
require("plugins.coq")
require("plugins.fterm")
require("plugins.trouble")
require("plugins.autopairs")
require("plugins.comment")
require("plugins.gitsigns")
require("plugins.lsp_installer")
require("plugins.null_ls")
require("plugins.fugitive")
require("plugins.lsp_config")
-- require("plugins.satellite")

vim.cmd("colorscheme tokyonight")
-- vim.g.tokyonight_style = "night"
