require("lualine").setup({
    options = {theme = 'solarized_dark'},
    -- options = {theme = 'nightfly'},
    -- options = {theme = 'gruvbox'},
    extensions = {'fugitive'},
    sections = {
        lualine_b = {'branch', 'diff'},
        lualine_c = {
            {
                'filename',
                file_status = true, -- displays file status (readonly status, modified status)
                path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
            }
        }
    }
})
