local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "amillert.lsp.lsp-installer"
require("amillert.lsp.handlers").setup()
require "amillert.lsp.null-ls"
require "amillert.lsp.nvim-metals"
