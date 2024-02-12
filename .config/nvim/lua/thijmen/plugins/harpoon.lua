return {
	"ThePrimeagen/harpoon",
	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		vim.keymap.set("n", "<leader>a", function()
			mark.add_file()
			print("added")
		end)
		vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

		vim.keymap.set("n", "1", function()
			require("harpoon.ui").nav_file(1)
		end)
		vim.keymap.set("n", "2", function()
			require("harpoon.ui").nav_file(2)
		end)
		vim.keymap.set("n", "3", function()
			require("harpoon.ui").nav_file(3)
		end)
		vim.keymap.set("n", "4", function()
			require("harpoon.ui").nav_file(4)
		end)
		vim.keymap.set("n", "5", function()
			require("harpoon.ui").nav_file(5)
		end)
	end,
}
