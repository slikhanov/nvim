local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  -- Not sure why this is required, found it to address the problem with bootstrap
  vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup({function(use)

  -- Core plugins
  use 'wbthomason/packer.nvim' -- Packer can manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used by lots of plugins
  use 'miversen33/import.nvim' -- Wrapper over pcall, safer version of Lua's 'require'

  -- Colorschemes
  use 'folke/tokyonight.nvim'
  use 'EdenEast/nightfox.nvim'

  -- Various plugins
  use 'kyazdani42/nvim-web-devicons' -- Showing icons in NVimTree
  use 'kyazdani42/nvim-tree.lua' -- File tree browsing plugin and file manager
  use 'karb94/neoscroll.nvim' -- Smooth buffer scrolling
  --use "akinsho/bufferline.nvim" -- Displays opened buffers as tabs
  use 'ibhagwan/fzf-lua'-- Fzf integration plugin
  use 'akinsho/toggleterm.nvim' -- Toggle terminal
  use 'tenxsoydev/size-matters.nvim' -- Changing font size for Neovide
  use 'dstein64/vim-startuptime' -- Plugin to measure startup time

  -- Cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- Buffer completions
  use "hrsh7th/cmp-path" -- Path completions
  use "hrsh7th/cmp-cmdline" -- Cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- Snippet completions
  use "hrsh7th/cmp-nvim-lsp" -- LSP completions
  use "hrsh7th/cmp-nvim-lua" -- Special Neovim Lua completions

  -- Snippets
  use "L3MON4D3/LuaSnip" --Snippet engine
  use "rafamadriz/friendly-snippets" -- Bunch of snippets to use

   -- LSP
  use "williamboman/mason.nvim" -- New version of LSP and other tools installer 
  use "williamboman/mason-lspconfig.nvim" -- Bridge plugin between Mason and built-in lspconfig
  use "neovim/nvim-lspconfig" -- Enable LSP
  use 'simrat39/rust-tools.nvim' -- Advanced support for Rust
  use "jose-elias-alvarez/null-ls.nvim" -- Integration of non-LSP tools into LSP

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})

