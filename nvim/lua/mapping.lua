-- Mapping are keyboard commands or shortcuts
-- That do not require any function definition and are generally
-- short for those which require more configuration or work see
-- ./cmds/keyboard.lua
--
-- remaping the space key as leader
vim.g.mapleader = " "

-- mapping for the file manager
vim.keymap.set("n", "<leader>fl", "<CMD>Oil<CR>", { desc = "Go to the file explorer" })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- remaping the esc to jk or kj
vim.keymap.set("i", "kj", "<ESC>", { desc = "Exit the insert mode" })
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit the insert mode" })
-- mapping the system clipboard
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Copy to the system clipboard (normal mode)" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Copy to the system clipboard (normal mode)" })
vim.keymap.set("x", "<leader>y", '"+y', { desc = "Copy to the system clipboard (visual mode)" })
vim.keymap.set("x", "<leader>Y", '"+Y', { desc = "Copy to the system clipboard (visual mode)" })

-- save file mapping
-- vim.keymap.set("n", "<C-s>", function()
-- 	local bufid = vim.api.nvim_get_current_buf()
-- 	print("Formatting before saving...")
--
-- 	-- Call conform.format and wait for it to finish
-- 	require("conform").format({ bufnr = bufid }, function(err, did_edit)
-- 		if err then
-- 			vim.cmd("w")
-- 			print("Error while formatting: " .. err, "Saved anyhow!")
-- 		end
--
-- 		if did_edit then
-- 			vim.cmd("w")
-- 			print("File formatted and saved successfully!!")
-- 		elseif not err and not did_edit then
-- 			vim.cmd("w")
-- 			print("Nothing to format, saved!!")
-- 		end
-- 	end)
-- end, { desc = "Format and save the current file" })

--- shift h and shift l for half page up and down navigation
vim.keymap.set("n", "H", "<C-u>zz", { desc = "Half page up and center" })
vim.keymap.set("n", "L", "<C-d>zz", { desc = "Half page down and center" })

vim.keymap.set("x", "H", "<C-u>zz", { desc = "Half page up and center" })
vim.keymap.set("x", "L", "<C-d>zz", { desc = "Half page down and center" })

--- close buffer / tab with <C-w> and move to previous buffer with <C-h> and next buffer with <C-l>
-- vim.keymap.set({ "n", "i" }, "<C-q>", "<CMD>bd<CR>", { desc = "Close the buffer/tab" })
-- vim.keymap.set({ "n", "i" }, "<C-h>", "<CMD>bp<CR>", { desc = "Move to previous buffer/tab" })
-- vim.keymap.set({ "n", "i" }, "<C-l>", "<CMD>bn<CR>", { desc = "Move to previous buffer/tab" })

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
