-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.diagnostics")

-- Apply after LazyVim so these global indentation defaults take precedence.
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
