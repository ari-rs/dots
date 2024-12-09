vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true, desc = "Toggle Nvim Tree" })


-- Faster scrolling with Shift + hjkl
vim.api.nvim_set_keymap('n', 'H', '5h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'L', '5l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'J', '5j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', '5k', { noremap = true, silent = true })
