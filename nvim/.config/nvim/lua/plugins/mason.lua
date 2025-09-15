return {
	{
		"williamboman/mason.nvim",
		cmd = "Mason",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "mason.nvim" },
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					-- LSPs (use mason-lspconfig names)
					"nil_ls",
					"marksman",
					"docker_compose_language_service",
					"dockerls",
					"html",
					"cssls",
					"jsonls",
					"eslint",
					"pyright",
					"emmet_ls",
					"rust_analyzer",
					"yamlls",
					"tailwindcss",
					"lua_ls",
					"vtsls",
					"ruff",
					"hyprls",
					"bashls",
				},
				auto_update = true,
				automatic_installation = false,
			})
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		cmd = { "MasonToolsInstall", "MasonToolsUpdate" },
		dependencies = { "mason.nvim" },
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					-- Formatters and other tools
					"stylua",
					"ruff",
					"prettier",
					"nixpkgs-fmt",
					"shfmt",
					"shellcheck",

					-- DAPs, linters, etc.
					-- Add more tools as needed
				},
				auto_update = false,
				run_on_start = false,
			})
		end,
	},
}
