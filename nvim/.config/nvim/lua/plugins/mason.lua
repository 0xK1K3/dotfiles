return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "mason.nvim" },
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
					"biome",
					"emmet_ls",
					"rust_analyzer",
					"yamlls",
					"tailwindcss",
					"lua_ls",
					"vtsls",
				},
				auto_update = true,
				automatic_installation = true,
			})
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "mason.nvim" },
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					-- Formatters and other tools
					"stylua",
					"ruff",
					"prettier",
					"nixpkgs-fmt",

					-- DAPs, linters, etc.
					-- Add more tools as needed
				},
				auto_update = true,
				run_on_start = true,
			})
		end,
	},
}
