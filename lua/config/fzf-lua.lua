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

