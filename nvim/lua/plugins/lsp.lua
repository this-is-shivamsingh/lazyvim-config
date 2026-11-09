return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        -- LazyVim applies this after startup; override it here so its inline
        -- diagnostic message (and all other source-buffer markers) stays off.
        virtual_text = false,
        virtual_lines = false,
        signs = false,
        underline = false,
      },
    },
  },
}
