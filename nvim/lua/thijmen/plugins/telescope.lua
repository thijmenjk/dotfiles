return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local telescope = require("telescope.builtin")
		vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
		vim.keymap.set("n", "<leader>pf", telescope.find_files, {})
		vim.keymap.set("n", "<leader>ps", telescope.live_grep, {})
		vim.keymap.set("n", "<C-p>", telescope.git_files, {})
		vim.keymap.set("n", "<leader>pr", telescope.resume, {})
	end,
}
