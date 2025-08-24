return {
	"nvim-telescope/telescope.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-ui-select.nvim" },
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader><leader>", builtin.live_grep, { desc = "Live Grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help Tags" })
		vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "Commands" })
		vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Keymaps" })
		vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Recent Files" })
		vim.keymap.set("n", "<leader>fs", builtin.git_status, { desc = "Git Status" })

		telescope.setup({
			defaults = {
				theme = require("telescope.themes").get_dropdown(),
			},
		})

		telescope.load_extension("ui-select")
	end,
}
