-- Remaping the space key as leader
vim.g.mapleader = " "

-- Mapping for the file manager
vim.keymap.set("n", "<leader>fl", "<CMD>Oil<CR>", { desc = "Go to the file explorer" })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Remaping the esc to jk or kj
vim.keymap.set("i", "kj", "<ESC>", { desc = "Exit the insert mode" })
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit the insert mode" })

-- Mapping the system clipboard
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Copy to the system clipboard (normal mode)" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Copy to the system clipboard (normal mode)" })
vim.keymap.set("x", "<leader>y", '"+y', { desc = "Copy to the system clipboard (visual mode)" })
vim.keymap.set("x", "<leader>Y", '"+Y', { desc = "Copy to the system clipboard (visual mode)" })


--- Shift h and Shift l for half page up and down navigation
vim.keymap.set("n", "H", "<C-u>zz", { desc = "Half page up and center" })
vim.keymap.set("n", "L", "<C-d>zz", { desc = "Half page down and center" })

vim.keymap.set("x", "H", "<C-u>zz", { desc = "Half page up and center" })
vim.keymap.set("x", "L", "<C-d>zz", { desc = "Half page down and center" })

