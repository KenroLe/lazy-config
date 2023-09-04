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
vim.keymap.set('n', '<Tab>', function()
  vim.cmd.tabnext()
end)
vim.keymap.set('n', 'S-<Tab>', function()
  vim.cmd.tabprevious()
end)
vim.keymap.set('n', '<space>e', ':Telescope file_browser<CR>')
vim.keymap.set('n', '<C-S-H>', require('smart-splits').swap_buf_left)
vim.keymap.set('n', '<C-S-J>', require('smart-splits').swap_buf_down)
vim.keymap.set('n', '<C-S-K>', require('smart-splits').swap_buf_up)
vim.keymap.set('n', '<C-S-L>', require('smart-splits').swap_buf_right)
vim.keymap.set('n', '<C-S-R>', require('smart-splits').start_resize_mode)
