return {
	"dmtrKovalenko/fff.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },
	build = "cargo +nightly build --release",
	lazy = false,
	config = function()
		require("fff").setup({
			-- Core settings
			base_path = vim.fn.getcwd(),
			prompt = "🔍 ",
			max_results = 100,
			max_threads = 4,
			title = "FFF Files",

			-- Window dimensions
			layout = {
				width = 0.8,
				height = 0.8,
				preview_size = 0.5,
			},

			-- Preview configuration
			preview = {
				enabled = true,
				max_size = 10 * 1024 * 1024, -- 10MB
				chunk_size = 8192,
				line_numbers = false,
				wrap_lines = false,
				show_file_info = true,
				binary_file_threshold = 1024,
				filetypes = {
					markdown = { wrap_lines = true },
					text = { wrap_lines = true },
					markdown = { wrap_lines = true },
				},
			},

			-- Keymaps
			keymaps = {
				close = "<Esc>",
				select = "<CR>",
				select_split = "<C-s>",
				select_vsplit = "<C-v>",
				select_tab = "<C-t>",
				move_up = { "<Up>", "<C-p>" },
				move_down = { "<Down>", "<C-n>" },
				preview_scroll_up = "<C-u>",
				preview_scroll_down = "<C-d>",
				toggle_debug = "<F2>",
			},

			hl = {
				border = "FloatBorder",
				normal = "Normal",
				cursor = "CursorLine",
				matched = "IncSearch",
				title = "Title",
				prompt = "Question",
				active_file = "Visual",
				frecency = "Number",
				debug = "Comment",
			},

			-- Frecency tracking
			frecency = {
				enabled = true,
				db_path = vim.fn.stdpath("cache") .. "/fff_nvim",
			},

			-- Logging
			logging = {
				enabled = false, -- Disable for performance
				log_level = "warn",
			},

			-- UI appearance
			ui = {
				wrap_paths = true,
				wrap_indent = 2,
				max_path_width = 80,
			},

			-- Image preview (you have snacks.nvim so this should work)
			image_preview = {
				enabled = true,
				max_width = 80,
				max_height = 24,
			},

			-- Icons (you have nvim-web-devicons)
			icons = {
				enabled = true,
			},

			-- Debug options
			debug = {
				enabled = false,
				show_scores = false,
			},
		})
	end,
	keys = {
		{
			"<leader>ff",
			function()
				require("fff").find_files()
			end,
			desc = "FFF Find Files",
		},
		{
			"<leader>fr",
			function()
				requrie("fff").scan_files()
				vim.notify("FFF files rescanned", vim.log.levels.INFO)
			end,
			desc = "FFF Rescan Files",
		},
		{
			"<leader>fR",
			function()
				require("fff").refresh_git_status()
				vim.notify("FFF git status refreshed", vim.log.levels.INFO)
			end,
			desc = "FFF Refresh Git Status",
		},
	},
}
