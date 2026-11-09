-- Keep diagnostics available to LSP actions without drawing them in source buffers.
vim.diagnostic.config({
  virtual_text = false,
  virtual_lines = false,
  signs = false,
  underline = false,
})
