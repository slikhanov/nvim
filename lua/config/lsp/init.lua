local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

import({"mason", "mason-lspconfig"}, function(modules)
  modules.mason.setup()
  modules['mason-lspconfig'].setup()
end)

require "config.lsp.lsp-installer"
require("config.lsp.handlers").setup()
require "config.lsp.null-ls"

