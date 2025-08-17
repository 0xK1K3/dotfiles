return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = {
					"lua",
					"rust",
					"typescript",
					"javascript",
					"python",
					"zig",
					"c",
					"bash",
					"nu",
					"diff",
					"html",
					"json",
					"jsdoc",
					"jsonc",
					"markdown",
					"markdown_inline",
					"query",
					"regex",
					"toml",
					"tsx",
					"vim",
					"vimdoc",
					"xml",
					"yaml",
				},
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
