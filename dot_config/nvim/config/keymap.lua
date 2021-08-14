-- Bufferline
vim.api.nvim_set_keymap("n", "<leader>j", ":BufferLineCyclePrev<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>k", ":BufferLineCycleNext<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>b", ":BufferLinePick<CR>", {})
vim.api.nvim_set_keymap("n", "<leader><tab>", ":e#<CR>", {})

-- SnipRun
vim.api.nvim_set_keymap("v", "<leader>xx", ":SnipRun<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>xx", ":SnipRun<CR>", {})
