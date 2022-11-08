-- impatient 
require ('impatient')

-- vim options
local set = vim.opt
set.number = true
set.numberwidth = 3
set.cursorline = true
vim.api.nvim_exec([[set mouse=a]], false)
set.termguicolors = true
set.shiftwidth = 4
set.tabstop = 4
set.clipboard = "unnamedplus"

require('packer-config')
require('keybinds')
require('plugins')
