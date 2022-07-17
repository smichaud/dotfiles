-- This variable must be enabled for tree colors to be applied properly
vim.cmd("set termguicolors")

require'nvim-tree'.setup {
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup = false,
    ignore_ft_on_setup = {},
    open_on_tab = false,
    hijack_cursor = false,
    update_cwd = true,
    -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
    update_focused_file = {enable = false, update_cwd = false, ignore_list = {}},
    system_open = {cmd = nil, args = {}},

    view = {width = 40, side = 'left', mappings = {custom_only = false, list = {}}},
    actions = {open_file = {resize_window = false}},
    renderer = { highlight_opened_files = "all" }
}
