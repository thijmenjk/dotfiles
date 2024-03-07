return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { "prettierd", "prettier" },
				typescript = { "prettierd", "prettier" },
				cs = { "csharpier" },
				csproj = { "xmlformatter" },
			},
			format_after_save = {
				lsp_fallback = true,
			},
			log_level = vim.log.levels.ERROR,
			notify_on_error = true,
		})
	end,
}
