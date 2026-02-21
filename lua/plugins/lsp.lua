return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"clangd",
					"html",
					"lua_ls",
					"gopls",
					"ts_ls",
					"pyright",
					"tailwindcss",
				},
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			vim.lsp.config("*", {
				capabilities = capabilities,
			})
			vim.lsp.enable({
				"lua_ls",
				"gopls",
				"ts_ls",
				"pyright",
				"clangd",
				"html",
				"tailwindcss",
			})
		end,
	},
}
