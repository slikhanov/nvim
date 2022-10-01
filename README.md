# nvim
Neovim configuration

## TODO

1. Narrow down treesitter languages, having all enabled is an overkill.

## Plugins

### nvim-treesitter

This is basically [tree-sitter](https://github.com/tree-sitter/tree-sitter) integration into NVim.
Suppose to give advanced and fast highlighting as well as other things. Didn't tinker with it much
yet. Link: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).

### nvim-tree

File tree browser written in Lua, pretty lightweight. Link: [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)
Use link to learn about shortcuts for file management.

### null-ls

This plugin attaches various command lines tools via LSP. Lots of built-in tools supported.
Link: [null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim).

### fzf-lua

This is excellent take on FZF integration into Neovim, written in Lua. Link: [fzf-lua](https://github.com/ibhagwan/fzf-lua)
NOTE: While it's excellent, apparently it doesn't support Windows. Need to do something about it as I really want
my config to be cross-platform.

## Color Schemes

### nightfox

Excellent colorscheme set written in Lua and nicely customizable. Incorporates nordfox which is a fresh take on my
favorite Nord theme. Link: [nightfox](https://github.com/EdenEast/nightfox.nvim).
