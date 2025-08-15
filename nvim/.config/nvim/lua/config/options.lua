vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.smartcase = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

-- Undo persistance
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
vim.fn.mkdir(vim.o.undodir, "p")

-- Custom highlights for Monokai Pro Ristretto theme
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		-- Override default Pmenu colors for better CMP appearance
		vim.api.nvim_set_hl(0, "Pmenu", { bg = "#2c2525", fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#403e41", fg = "#e6d9db", bold = true })
		vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "#463a3a" })
		vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#85dacc" })

		-- Float windows and borders (affects Oil, LSP hover, etc.)
		vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#463a3a", bg = "#2c2525" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#2c2525", fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "FloatTitle", { bg = "#2c2525", fg = "#f9cc6c", bold = true })

		-- Oil.nvim specific highlights
		vim.api.nvim_set_hl(0, "OilDir", { fg = "#85dacc", bold = true })
		vim.api.nvim_set_hl(0, "OilFile", { fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "OilCopy", { fg = "#f9cc6c" })
		vim.api.nvim_set_hl(0, "OilMove", { fg = "#fd6883" })
		vim.api.nvim_set_hl(0, "OilCreate", { fg = "#adda78" })
		vim.api.nvim_set_hl(0, "OilDelete", { fg = "#fd6883" })
		vim.api.nvim_set_hl(0, "OilPermissionNone", { fg = "#463a3a" })
		vim.api.nvim_set_hl(0, "OilPermissionRead", { fg = "#f9cc6c" })
		vim.api.nvim_set_hl(0, "OilPermissionWrite", { fg = "#fd6883" })
		vim.api.nvim_set_hl(0, "OilPermissionExecute", { fg = "#adda78" })

		-- Common popup/window highlights that might be used by various plugins
		vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#463a3a", bg = "NONE" })
		vim.api.nvim_set_hl(0, "VertSplit", { fg = "#463a3a", bg = "NONE" })

		-- Telescope highlights (just in case)
		vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "#2c2525", fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#463a3a", bg = "#2c2525" })
		vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "#2c2525", fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#463a3a", bg = "#2c2525" })
		vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "#2c2525", fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#463a3a", bg = "#2c2525" })
		vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "#2c2525", fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#463a3a", bg = "#2c2525" })

		-- Better Visual selection with more contrast
		vim.api.nvim_set_hl(0, "Visual", { bg = "#fd6883", fg = "#2c2525", bold = true })
		vim.api.nvim_set_hl(0, "VisualNOS", { bg = "#fd6883", fg = "#2c2525" })

		-- Ghost text
		vim.api.nvim_set_hl(0, "CmpGhostText", { fg = "#463a3a", italic = true })

		-- Kind highlights (LSP item types) - Ristretto colors
		vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = "#adda78" })
		vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = "#adda78" })
		vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = "#fd6883" })
		vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = "#85dacc" })
		vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#a8a9eb" })
		vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = "#f38d70" })
		vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = "#f9cc6c" })
		vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = "#f1e5e7" })
		vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = "#85dacc" })
		vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = "#fd6883" })
		vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#f9cc6c" })
		vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = "#adda78" })
		vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = "#f9cc6c" })
	end,
})

-- Trigger the autocmd for current colorscheme
vim.cmd("doautocmd ColorScheme")
