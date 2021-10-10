-- Bufferline
vim.api.nvim_set_keymap("n", "<leader>j", ":BufferLineCyclePrev<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>k", ":BufferLineCycleNext<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>b", ":BufferLinePick<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", {})
vim.api.nvim_set_keymap("n", "<leader><tab>", ":e#<CR>", {})

-- SnipRun
vim.api.nvim_set_keymap("v", "<leader>xx", ":SnipRun<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>xx", ":SnipRun<CR>", {})

-- Kommentary
vim.g.kommentary_create_default_mappings = false
vim.api.nvim_set_keymap("v", "<C-_>", "<Plug>kommentary_visual_default<C-c>", {})
vim.api.nvim_set_keymap("n", "<C-_>", "<Plug>kommentary_line_default", {})

-- Perso
-- vim.api.nvim_set_keymap("n", "<leader>tc", "call ToggleCase()<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>gt", "call GoToTest()<CR>", {})
-- vim.api.nvim_set_keymap("n", "<leader>u", "call Proto()<CR>", {})
