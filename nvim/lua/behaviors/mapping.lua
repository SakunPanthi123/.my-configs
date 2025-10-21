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
vim.keymap.set("n", "<C-s>", function()
	vim.cmd("w")
	print("File saved successfully!!")
end, { desc = "Save the current file" })

--- shift h and shift l for half page up and down navigation
vim.keymap.set("n", "H", "<C-u>zz", { desc = "Half page up and center" })
vim.keymap.set("n", "L", "<C-d>zz", { desc = "Half page down and center" })

vim.keymap.set("x", "H", "<C-u>zz", { desc = "Half page up and center" })
vim.keymap.set("x", "L", "<C-d>zz", { desc = "Half page down and center" })

--- close buffer / tab with <C-w> and move to previous buffer with <C-h> and next buffer with <C-l>
vim.keymap.set("n","<C-q>","<CMD>bd<CR>",{desc = "Close the buffer/tab"})
vim.keymap.set("n","<C-h>","<CMD>bp<CR>",{desc = "Move to previous buffer/tab"})
vim.keymap.set("n","<C-l>","<CMD>bn<CR>",{desc = "Move to previous buffer/tab"})

