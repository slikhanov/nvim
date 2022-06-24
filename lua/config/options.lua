local utils = require 'config.utils'

vim.g.mapleader = ';'
vim.opt.clipboard = 'unnamedplus'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'
vim.opt.termguicolors = true
utils.set_indent(2)
vim.opt.listchars = { eol = '↲', tab = '▸ ', space = '·' }

