local saga = require 'lspsaga'

saga.init_lsp_saga {
    use_saga_diagnostic_sign = true,
    max_preview_lines = 5,
    code_action_prompt = {enable = true, sign = true, sign_priority = 20, virtual_text = true},
    code_action_keys = {quit = {'<Esc>', 'q'}, exec = '<CR>'},
    rename_action_keys = {quit = {'<Esc>', 'q'}, exec = '<CR>'},
    finder_action_keys = {quit = {'<Esc>', 'q'}, open = '<CR>'}
}
