return {
	"dmtrKovalenko/fff.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },
	build = "cargo +nightly build --release",
	event = "VeryLazy",
	config = function()
		local ok, fff = pcall(require, "fff")
		if ok then
			fff.setup({
				-- Core settings
				base_path = vim.fn.getcwd(),
				max_results = 100,
				max_threads = 4,
				prompt = "🔍 ",
				title = "FFF Files",
				ui_enabled = true,

				-- Window dimensions
				width = 0.8,
				height = 0.8,

				-- Preview configuration
				preview = {
					enabled = true,
					width = 0.5,
					max_lines = 5000,
					max_size = 10 * 1024 * 1024, -- 10MB
					line_numbers = false,
					wrap_lines = false,
					show_file_info = true,
					binary_file_threshold = 1024,
					filetypes = {
						markdown = { wrap_lines = true },
						text = { wrap_lines = true },
						log = { tail_lines = 100 },
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

				-- Highlight groups (matching your everforest theme)
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
		else
			vim.notify(
				"FFF.nvim failed to load. Make sure Rust nightly is installed and the plugin is built.",
				vim.log.levels.WARN
			)
		end
	end,
	keys = {
		{
			"<leader>ff",
			function()
				local ok, fff = pcall(require, "fff")
				if ok and fff.find_files then
					fff.find_files()
				else
					-- Fallback to telescope if FFF isn't available
					require("telescope.builtin").find_files()
				end
			end,
			desc = "FFF Find Files (fallback to Telescope)",
		},
		{
			"<leader>fr",
			function()
				local ok, fff = pcall(require, "fff")
				if ok and fff.scan_files then
					fff.scan_files()
					vim.notify("FFF files rescanned", vim.log.levels.INFO)
				end
			end,
			desc = "FFF Rescan Files",
		},
		{
			"<leader>fR",
			function()
				local ok, fff = pcall(require, "fff")
				if ok and fff.refresh_git_status then
					fff.refresh_git_status()
					vim.notify("FFF git status refreshed", vim.log.levels.INFO)
				end
			end,
			desc = "FFF Refresh Git Status",
		},
	},
}
