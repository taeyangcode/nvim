return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				tex = { "latexindent" },
                                javascript = { "prettier" },
                                typescript = { "prettier" },
                                typescriptreact = { "prettier" },
                                rust = { "rustfmt" }
			},
		})
	end,
}
