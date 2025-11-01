return {
	"numToStr/Comment.nvim",
	config = function()
		local ft = require("Comment.ft")
		local options = {
			opleader = {
				line = "sc",
				block = "sb",
			},
			toggler = {
				block = "sb",
			},
			extra = {
				below = "<leader>gj",
			},
			mappings = {
				extra = true,
			},
		}
		ft.set("javascriptreact", { "{/*%s*/}", "{/*%s*/}" })
		ft.set("typescriptreact", { "{/*%s*/}", "{/*%s*/}" })

		require("Comment").setup(options)
	end,
}
