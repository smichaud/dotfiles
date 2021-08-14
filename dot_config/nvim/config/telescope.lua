require('telescope').setup {
    defaults = {
        vimgrep_arguments = {
            'rg', '--hidden', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column',
            '--smart-case'
        },
        prompt_prefix = "🔍 ",
        selection_caret = "> ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        layout_config = {
            width = 0.85,
            preview_width = 0.5,
            preview_cutoff = 120,
            horizontal = {mirror = false},
            vertical = {mirror = false},
            prompt_position = "bottom"
        },
        file_sorter = require('telescope.sorters').get_fuzzy_file,
        file_ignore_patterns = {'node_modules/', 'plugged/', 'undodir/'},
        generic_sorter = require('telescope.sorters').get_generic_fuzzy_sorter,
        path_display = {"absolute"},
        winblend = 0,
        border = {},
        borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
        color_devicons = true,
        use_less = true,
        set_env = {['COLORTERM'] = 'truecolor'}, -- default = nil,
        file_previewer = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

        mappings = {i = {["<C-x>"] = false, ["<C-q>"] = require('telescope.actions').send_to_qflist}},

        -- Developer configurations: Not meant for general override
        buffer_previewer_maker = require('telescope.previewers').buffer_previewer_maker
    },
    extensions = {fzy_native = {override_generic_sorter = false, override_file_sorter = true}}
}

require('telescope').load_extension('fzy_native')
require('telescope').load_extension('git_worktree')

