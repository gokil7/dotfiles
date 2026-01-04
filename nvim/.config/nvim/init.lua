vim.opt.number = true
vim.opt.termguicolors = true

vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")

vim.cmd("colorscheme sorbet")

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.smartindent = true

vim.opt.lazyredraw = true
vim.opt.updatetime = 300

vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"

vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")

