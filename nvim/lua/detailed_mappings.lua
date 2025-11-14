local keymap = require(".utils").keymap
local compile = require(".compile")

-- Mapping the vim diagnonistics
vim.keymap.set("n", "<leader>d", function()
	vim.diagnostic.config({ float = { border = "rounded", undercurl=true } }) vim.diagnostic.open_float()
end, { desc = "Opens the error diagnostic float" })

-- Vertical split into file explorer
vim.keymap.set("n", "v-", function()
	vim.cmd("rightbelow vsplit")
	vim.cmd("norm -")
end, {})

-- Mapping Escape key in terminal mode to work exactly like in normal buffers
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {})

-- Mapping for Blink to start completion immediately with this keys combo
vim.keymap.set("n", "<C-k>", function()
	local col = vim.fn.col(".")
	local line = vim.fn.getline(".")
	local next_char = line:sub(col + 1, col + 1)
	local cur_char = line:sub(col, col)

	-- Check if we're already at the end of the word
	-- (end if next_char is space, punctuation, or empty)
	if next_char:match("[%w_]") then
		vim.api.nvim_feedkeys("e", "n", false)
	end

	vim.api.nvim_feedkeys("a", "n", false)
	require("blink.cmp").show()
end, { desc = "Go to end of word (if not already), then start blink.cmp completion" })

keymap("<M-c>", function()
	compile.command()
end, "Opens tmux like compile window at the bottom")

keymap("<M-e>", function()
	compile.editCmdAndCwd()
end, "Edit the compile command envs")
