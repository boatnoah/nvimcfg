vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true
vim.opt.guicursor = ""
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false
vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 10
vim.cmd([[
  highlight YankHighlight guibg=#ed8796 guifg=#949cbb
]])
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("boat-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank({
			higroup = "YankHighlight",
		})
	end,
})
