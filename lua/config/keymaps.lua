vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>td", function()
  local vt = vim.diagnostic.config().virtual_text
  vim.diagnostic.config({ virtual_text = not vt })
end, { desc = "Toggle Inline Diagnostics" })
