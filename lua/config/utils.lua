local utils = {}

utils.set_indent = function (indent_size)
  vim.opt.expandtab = true
  vim.opt.shiftwidth = indent_size
  vim.opt.tabstop = indent_size
  vim.opt.softtabstop = indent_size
  vim.opt.autoindent = true
  vim.opt.smartindent = true
end

return utils
