local utils = require("config.utils")

-- Enable true color support
vim.opt.termguicolors = true

-- Set background color to dark
vim.opt.background = "dark"

-- Show the ruler
vim.opt.ruler = true

-- Show line numbers
vim.opt.number = true

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Set tab width
vim.opt.tabstop = 2

-- Set the number of spaces for indentation
vim.opt.shiftwidth = 2

-- Copy to clipboard
vim.opt.clipboard = { "unnamedplus" }

-- Remove whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = utils.strip_trailing_whitespace,
})

-- Map <SPACE> to <leader> and set the leader key
vim.keymap.set("n", "<SPACE>", "<leader>", { silent = true })
vim.g.mapleader = " "

vim.keymap.set(
  "n",
  "<leader>l",
  utils.toggle_color_column,
  { noremap = true, silent = true, desc = "Show (L)ine length with column" }
)
