return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local fzf = require("fzf-lua")

			fzf.setup({})

			-- Keymaps
			vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "[F]ind [F]iles" })
			vim.keymap.set("n", "<leader>fw", fzf.live_grep, { desc = "[F]ind by [G]rep" })
			vim.keymap.set("n", "<leader>fn", function()
				fzf.files({ cwd = vim.fn.stdpath("config") })
			end, { desc = "[F]ind [N]eovim files" })
			vim.keymap.set("n", "gd", fzf.lsp_definitions, { desc = "[G]oto [D]efinition" })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover Documentation" })
		end
	}
}
