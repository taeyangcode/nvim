return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				tex = { "latexindent" },
                                typescript = { "prettier" },
                                rust = { "rustfmt" },
			},
		})
	end,
}
