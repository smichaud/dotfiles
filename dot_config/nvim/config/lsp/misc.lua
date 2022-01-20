--------------------------------------------------------------
-- NOTE: use `:checkhealth` to make sure everything works !!!!
--------------------------------------------------------------
-- Refer to:
-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#html
-----------------------------------------------------------------

-- Use whereever you want signatures
local function on_attach(client)
    require "lsp_signature".on_attach()
end

-- yay -S bash-language-server
require('lspconfig').bashls.setup { }

-- yay -S dockerfile-language-server
require'lspconfig'.dockerls.setup { }

-- yay -S rust-analyzer
require'lspconfig'.rust_analyzer.setup {
    on_attach = on_attach,
}

-- yay -S vim-language-server
require'lspconfig'.vimls.setup {
    on_attach = on_attach,
}

-- yay -S yaml-language-server
require'lspconfig'.yamlls.setup {}

-- yay -S vscode-css-languageserver-bin
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require'lspconfig'.cssls.setup {
    cmd = {"css-languageserver", "--stdio"}, -- yay install without dash
    capabilities = capabilities
}

-- yay -S vscode-html-languageserver
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require'lspconfig'.html.setup {
    cmd = {"vscode-html-languageserver", "--stdio"}, -- yay install without dash
    capabilities = capabilities
}

-- yay -S vscode-json-languageserver
require'lspconfig'.jsonls.setup {
    cmd = {"vscode-json-languageserver", "--stdio"}, -- yay install without dash
    init_options = {provideFormatter = false}
}
