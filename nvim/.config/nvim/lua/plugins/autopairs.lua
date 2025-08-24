return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- opts = {}
	},
	{
		"windwp/nvim-ts-autotag",
		event = { "BufReadPre", "BufNewFile" },
		opts = {},
	},
}
