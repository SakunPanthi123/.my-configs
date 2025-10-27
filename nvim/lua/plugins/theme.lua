return {
	"vague2k/vague.nvim",
	config = function()
		vim.cmd.colorscheme("vague")
	end,
	-- "bluz71/vim-moonfly-colors",
	-- config = function() vim.cmd.colorscheme("moonfly") end,
	-- "rebelot/kanagawa.nvim",
	-- config = function() vim.cmd.colorscheme("kanagawa") end
	-- "navarasu/onedark.nvim",
	-- priority = 1000, -- make sure to load this before all the other start plugins
	-- config = function()
	-- 	require("onedark").setup({
	-- 		style = "darker",
	-- 	})
	-- 	-- Enable theme
	-- 	vim.cmd.colorscheme("onedark")
	-- 	require("onedark").load()
	-- end,
}
