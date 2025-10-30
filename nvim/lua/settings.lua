vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
-- come here to turn off the defualt mode indicator
vim.opt.showmode = false

vim.opt.smartindent = true
vim.opt.autoindent = true -- auto indent

-- line wrap
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- changing the cursor to block
vim.opt.guicursor = ""

-- cursor line and signline config
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

-- caseinsensitive search when all in lower case
-- case sensitive when case is specified
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Ignoring opening the folds while using paragraph jumping across the folds
vim.opt.foldopen:remove("block")

-- Disabling the warning
vim.opt.shortmess:append('F')

vim.o.winborder = 'single'
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = "red" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = "yellow" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = "cyan" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = "blue" })

