--[[########################################
Neovim neoclip configuration file

author: LAMBIN Simon
email: simo.lambin@gmail.com
########################################]]

require("neoclip").setup({
	history = 1000,
	enable_persistent_history = true,
	filter = nil,
	preview = true,
	default_register = '"',
	content_spec_column = false,
	on_paste = {
		set_reg = false,
	},
	keys = {
		telescope = {
			i = {
				select = "<cr>",
				paste = "<c-p>",
				custom = {},
			},
			n = {
				select = "<cr>",
				paste = "p",
				paste_behind = "P",
				custom = {},
			},
		},
	},
})
