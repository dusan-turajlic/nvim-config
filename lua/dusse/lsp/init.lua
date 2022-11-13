local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  vim.notify("lspconfig was not loaded")
  return
end

require "dusse.lsp.mason"
require("dusse.lsp.handlers").setup()
require "dusse.lsp.null-ls"
