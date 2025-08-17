-- Custom highlights for Monokai Pro Ristretto theme with Blink.cmp
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		-- Base Pmenu colors (still used by some plugins)
		vim.api.nvim_set_hl(0, "Pmenu", { bg = "#2c2525", fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#403e41", fg = "#e6d9db", bold = true })
		vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "#463a3a" })
		vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#85dacc" })

		-- Blink.cmp specific highlights
		vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = "#2c2525", fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { fg = "#85dacc", bg = "#2c2525" })
		vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { bg = "#403e41", fg = "#e6d9db", bold = true })
		vim.api.nvim_set_hl(0, "BlinkCmpScrollBarThumb", { bg = "#85dacc" })
		vim.api.nvim_set_hl(0, "BlinkCmpScrollBarGutter", { bg = "#463a3a" })

		-- Blink.cmp labels and kinds
		vim.api.nvim_set_hl(0, "BlinkCmpLabel", { fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "BlinkCmpLabelDeprecated", { fg = "#463a3a", strikethrough = true })
		vim.api.nvim_set_hl(0, "BlinkCmpLabelMatch", { fg = "#fd6883", bold = true })
		vim.api.nvim_set_hl(0, "BlinkCmpLabelDetail", { fg = "#a8a9eb" })
		vim.api.nvim_set_hl(0, "BlinkCmpLabelDescription", { fg = "#85dacc" })
		vim.api.nvim_set_hl(0, "BlinkCmpKind", { fg = "#f9cc6c" })
		vim.api.nvim_set_hl(0, "BlinkCmpSource", { fg = "#463a3a" })
		vim.api.nvim_set_hl(0, "BlinkCmpGhostText", { fg = "#463a3a", italic = true })

		-- Blink.cmp documentation
		vim.api.nvim_set_hl(0, "BlinkCmpDoc", { bg = "#1e1e1e", fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", { fg = "#85dacc", bg = "#2c2525" })
		vim.api.nvim_set_hl(0, "BlinkCmpDocSeparator", { fg = "#463a3a" })
		vim.api.nvim_set_hl(0, "BlinkCmpDocCursorLine", { bg = "#403e41" })

		-- Blink.cmp signature help
		vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelp", { bg = "#2c2525", fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelpBorder", { fg = "#463a3a", bg = "#2c2525" })
		vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelpActiveParameter", { bg = "#403e41", fg = "#f9cc6c", bold = true })

		-- Blink.cmp kind-specific highlights
		vim.api.nvim_set_hl(0, "BlinkCmpKindText", { fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindMethod", { fg = "#adda78" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindFunction", { fg = "#adda78" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindConstructor", { fg = "#fd6883" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindField", { fg = "#85dacc" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindVariable", { fg = "#a8a9eb" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindClass", { fg = "#f38d70" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindInterface", { fg = "#f9cc6c" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindModule", { fg = "#f1e5e7" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindProperty", { fg = "#85dacc" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindKeyword", { fg = "#fd6883" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindSnippet", { fg = "#f9cc6c" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindFile", { fg = "#adda78" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindFolder", { fg = "#f9cc6c" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindEnum", { fg = "#f38d70" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindConstant", { fg = "#f9cc6c" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindStruct", { fg = "#f38d70" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindValue", { fg = "#a8a9eb" })
		vim.api.nvim_set_hl(0, "BlinkCmpKindEnumMember", { fg = "#85dacc" })

		-- Float windows and borders (affects Oil, LSP hover, etc.)
		vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#85dacc", bg = "#2c2525" })
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

		-- Common popup/window highlights
		vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#463a3a", bg = "NONE" })
		vim.api.nvim_set_hl(0, "VertSplit", { fg = "#463a3a", bg = "NONE" })

		-- Telescope highlights
		vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "#2c2525", fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#85dacc", bg = "#2c2525" })
		vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "#2c2525", fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#85dacc", bg = "#2c2525" })
		vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "#2c2525", fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#85dacc", bg = "#2c2525" })
		vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "#2c2525", fg = "#e6d9db" })
		vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#85dacc", bg = "#2c2525" })

		-- Better Visual selection with more contrast
		vim.api.nvim_set_hl(0, "Visual", { bg = "#fd6883", fg = "#2c2525", bold = true })
		vim.api.nvim_set_hl(0, "VisualNOS", { bg = "#fd6883", fg = "#2c2525" })
	end,
})

-- Trigger the autocmd for current colorscheme
vim.cmd("doautocmd ColorScheme")
