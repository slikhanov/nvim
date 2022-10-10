local status_ok, fzf = pcall(require, "fzf-lua")
if not status_ok then
  return
end

-- FZF Keymaps
vim.keymap.set("n", "<leader>m", function () fzf.builtin() end)
vim.keymap.set("n", "<leader>f", function () fzf.files() end)
vim.keymap.set("n", "<leader>b", function () fzf.buffers() end)
vim.keymap.set("n", "<leader>*", function () fzf.grep_cword() end)
vim.keymap.set("n", "<leader>C", function () fzf.colorschemes() end)
vim.keymap.set("n", "gd", function() fzf.lsp_definitions() end)
vim.keymap.set("n", "gD", function() fzf.lsp_declarations() end)
vim.keymap.set("n", "gi", function() fzf.lsp_implementations() end)
vim.keymap.set("n", "gr", function() fzf.lsp_references() end)

