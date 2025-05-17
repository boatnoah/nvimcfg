return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		settings = {
			save_on_toggle = true,
		},
		config = function()
			local harpoon = require("harpoon")

			-- REQUIRED
			harpoon:setup()

			-- Set up keymaps
			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():add()
			end)
			vim.keymap.set("n", "<leader>e", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

			vim.keymap.set("n", "th", function()
				harpoon:list():select(1)
			end)
			vim.keymap.set("n", "tj", function()
				harpoon:list():select(2)
			end)
			vim.keymap.set("n", "tk", function()
				harpoon:list():select(3)
			end)
			vim.keymap.set("n", "tl", function()
				harpoon:list():select(4)
			end)
			vim.keymap.set("n", "t;", function()
				harpoon:list():select(5)
			end)

			-- Toggle previous & next buffers stored within Harpoon list
			vim.keymap.set("n", "<C-p>", function()
				harpoon:list():prev()
			end)
			vim.keymap.set("n", "<C-n>", function()
				harpoon:list():next()
			end)
		end,
	},
}
