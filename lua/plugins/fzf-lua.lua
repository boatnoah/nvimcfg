return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local fzf = require("fzf-lua")

			fzf.register_ui_select()

			fzf.setup({
				"fzf-vim",
				files = {
					find_opts = [[--type f --hidden --exclude .git --exclude node_modules --exclude .venv]],
				},
				grep = {
					rg_opts = [[--color=always --hidden --smart-case --glob '!.git/*' --glob '!node_modules/*' --glob '!.venv/*']],
				},
				file_ignore_patterns = { ".git/", "node_modules/", ".venv/", "__pycache__/" },
			})

			-- Keymaps
			vim.keymap.set("n", "<leader>ff",
				fzf.files, { desc = "[F]ind [F]iles" })

			vim.keymap.set("n", "<leader>fw",
				fzf.live_grep_native, { desc = "[F]ind [W]ord" })

			vim.keymap.set("n", "<leader>fb", fzf.git_branches, { desc = "[F]ind by Git [B]ranches" })
			vim.keymap.set("n", "<leader>fd", fzf.diagnostics_document, { desc = "[F]ind by Diagnostics" })
			vim.keymap.set("n", "<leader>fn", function()
				fzf.files({ cwd = vim.fn.stdpath("config") })
			end, { desc = "[F]ind [N]eovim files" })
			vim.keymap.set("n", "gd", fzf.lsp_definitions, { desc = "[G]oto [D]efinition" })
			vim.keymap.set("n", "gr", fzf.lsp_references, { desc = "[G]oto [R]eferences" })
			vim.keymap.set("n", "gi", fzf.lsp_implementations, { desc = "[G]oto [I]mplementation" })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover Documentation" })
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
			vim.keymap.set("n", "<leader>ca", fzf.lsp_code_actions, { desc = "[C]ode [A]ction" })
		end
	}
}
