local utils = require 'config.utils'

vim.keymap.set("n", "<leader>sl", ":set list!<CR>")
vim.keymap.set("n", "<leader>t2", function () utils.set_indent(2) end)
vim.keymap.set("n", "<leader>t4", function () utils.set_indent(4) end)

-- Some Telescope mapping
vim.keymap.set("n", "<leader>f", function() require ('telescope.builtin').find_files() end)
vim.keymap.set("n", "<leader>F", function() require ('telescope.builtin').live_grep() end)
vim.keymap.set("n", "<leader>b", function() require ('telescope.builtin').buffers() end)

-- Nvimtree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
