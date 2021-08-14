local organizeImports = {formatCommand = "organize-imports-cli -", formatStdin = true}
local prettier = {formatCommand = "prettier --stdin-filepath ${INPUT}", formatStdin = true}

require"lspconfig".efm.setup {
    init_options = {documentFormatting = true, codeAction = false},
    filetypes = {
        "python", "lua", "sh", "yaml", "json", "typescript", "typescriptreact", "javascript", "javascriptreact", "html",
        "css", "markdown"
    },
    settings = {
        rootMarkers = {"pyproject.toml", "package.json"},
        languages = {
            python = {
                {formatCommand = "isort --quiet -", formatStdin = true},
                {formatCommand = "black --quiet -", formatStdin = true}
            },
            lua = {
                {
                    formatCommand = "lua-format -i --no-keep-simple-function-one-line --column-limit=120",
                    formatStdin = true
                }
            },
            sh = {{formatCommand = 'shfmt -ci -s -bn -i 4', formatStdin = true}},
            javascript = {prettier},
            javascriptreact = {prettier},
            typescript = {prettier},
            typescriptreact = {prettier},
            html = {prettier},
            css = {prettier},
            json = {prettier},
            yaml = {prettier},
            markdown = {
                {
                    lintCommand = 'markdownlint -s',
                    lintStdin = true,
                    lintFormats = {'%f:%l %m', '%f:%l:%c %m', '%f: %l: %m'}
                }, {formatCommand = 'pandoc -f markdown -t gfm -sp --tab-stop=2', formatStdin = true}
            }
        }
    }
}

vim.api.nvim_command('autocmd BufWritePre *.md lua vim.lsp.buf.formatting_sync(nil, 1000)')
vim.api.nvim_command('autocmd BufWritePre *.json,*.yaml lua vim.lsp.buf.formatting_sync(nil, 1000)')

vim.api.nvim_command('autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 1000)')
vim.api.nvim_command('autocmd BufWritePre *.sh lua vim.lsp.buf.formatting_sync(nil, 1000)')

vim.api.nvim_command('autocmd BufWritePre *.html,*.css lua vim.lsp.buf.formatting_sync(nil, 1000)')
vim.api.nvim_command('autocmd BufWritePre *.js,*.jsx lua vim.lsp.buf.formatting_sync(nil, 1000)')
vim.api.nvim_command('autocmd BufWritePre *.ts,*.tsx lua vim.lsp.buf.formatting_sync(nil, 1000)')

vim.api.nvim_command('autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 1000)')
