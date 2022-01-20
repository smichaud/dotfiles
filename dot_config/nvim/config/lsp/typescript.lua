local lspconfig = require "lspconfig"

local eslint = {
    lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"},
    lintIgnoreExitCode = true,
    formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
    formatStdin = true
}

local function organize_imports()
    local params = {command = "_typescript.organizeImports", arguments = {vim.api.nvim_buf_get_name(0)}, title = ""}
    vim.lsp.buf.execute_command(params)
end

local function on_attach(client)
    client.resolved_capabilities.document_formatting = false
    require "lsp_signature".on_attach()
end

lspconfig.tsserver.setup {
    on_attach = on_attach,
    commands = {OrganizeImports = {organize_imports, description = "Organize Imports"}}
}
