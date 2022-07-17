local utils = require 'config.utils'

vim.keymap.set("n", "<leader>sl", ":set list!<CR>")
vim.keymap.set("n", "<leader>t2", function () utils.set_indent(2) end)
vim.keymap.set("n", "<leader>t4", function () utils.set_indent(4) end)

-- Nvimtree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")

-- Fzf
local fzf = require 'fzf-lua'
vim.keymap.set("n", "<leader>m", function () fzf.builtin() end)
vim.keymap.set("n", "<leader>f", function () fzf.files() end)
vim.keymap.set("n", "<leader>b", function () fzf.buffers() end)
vim.keymap.set("n", "<leader>*", function () fzf.grep_cword() end)

