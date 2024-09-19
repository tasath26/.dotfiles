require "options"
require "plugins"
require "custom"

vim.o.laststatus = 3

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

vim.api.nvim_set_option("clipboard", "unnamed")

require("bufferline").setup{}
require("nvim-tree").setup()

local float_terminal = require('float')

-- Set keymap to call the function from the module
vim.api.nvim_set_keymap('n', '<C-t>', ':lua require("float").open_floaterm()<CR>', { noremap = true, silent = true })
