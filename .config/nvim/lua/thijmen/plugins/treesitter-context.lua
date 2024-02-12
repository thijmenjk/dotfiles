local enabled_for_langs = { "cs", "lua" }

return {
	"nvim-treesitter/nvim-treesitter-context",
	config = function()
		require("treesitter-context").setup({
			enable = true,
			on_attach = function(bufnum)
				local ft = vim.api.nvim_buf_get_option(bufnum, "filetype")
				local enabled = vim.tbl_contains(enabled_for_langs, ft)

				return enabled
			end,
		})
	end,
}
