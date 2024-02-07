return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			markdown = { "vale" },
			typescript = { "eslint" },
			javascript = { "eslint" },
			javascriptreact = { "eslint" },
		}
	end,
}
