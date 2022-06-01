local utils = require 'config.utils'

vim.keymap.set("n", "<leader>sl", ":set list!<CR>")
vim.keymap.set("n", "<leader>t2", function () utils.set_indent(2) end)
vim.keymap.set("n", "<leader>t4", function () utils.set_indent(4) end)

