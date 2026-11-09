-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Resize windows horizontally using <leader>w and arrow brackets
vim.keymap.set("n", "<leader>w-", "<cmd>vertical resize -5<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<leader>w+", "<cmd>vertical resize +5<cr>", { desc = "Increase Window Width" })

vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>ws", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>wq", "<C-w>q", { desc = "Close current window" })

-- Project terminal in a vertical split on the right.
vim.keymap.set("n", "<leader>fV", function()
  Snacks.terminal(nil, {
    cwd = LazyVim.root(),
    win = { position = "right", width = 0.40 },
  })
end, { desc = "Terminal (Root Dir, Right)" })

-- Navigate windows directly using leader + hjkl
vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Go to bottom window" })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Go to top window" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Go to right window" })

-- Save automatically when losing focus or leaving a buffer
vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost" }, {
  pattern = "*",
  command = "silent! wall", -- saves all modified files
})
