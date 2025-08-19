-- Indentation
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.breakindent = true

-- Line settings
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.wrap = false

-- UI settings
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"
vim.opt.showmode = false

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", space = "·", nbsp = "␣" }

-- Split window settings
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Scroll page settings
vim.opt.scrolloff = 5

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Undo persistance
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
vim.fn.mkdir(vim.o.undodir, "p")

-- Highlight text after yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("YankHighlight", {
		clear = true,
	}),
	pattern = "*",
	callback = function()
		vim.highlight.on_yank()
	end,
	desc = "Highlight yank",
})
