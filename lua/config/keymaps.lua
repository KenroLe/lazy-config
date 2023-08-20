-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set('n', '<leader>cF', function()
  vim.lsp.buf.format();
end, { remap = true })
-- close all other buffers
vim.keymap.set('n', '<leader>bco', function()
  local current = vim.api.nvim_get_current_buf()
  for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    if current ~= bufnr then
      vim.api.nvim_buf_delete(bufnr, {})
    end
  end
end)
