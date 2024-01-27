return {
	"folke/trouble.nvim",
	config = function()
		require("trouble").setup({
			icons = false,
			fold_open = "v", -- icon used for open folds
			fold_closed = ">", -- icon used for closed folds
			use_diagnostic_signs = true,
		})

		vim.keymap.set("n", "<leader>dl", function()
			require("trouble").toggle()
		end)

		-- vim.keymap.set("n", "[d", function()
		--     require("trouble").previous({ skip_groups = true, jump = true })
		-- end)

		-- vim.keymap.set("n", "]d", function()
		--     require("trouble").next({ skip_groups = true, jump = true })
		-- end)
	end,
}
