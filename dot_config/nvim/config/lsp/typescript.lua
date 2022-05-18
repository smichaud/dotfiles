local lspconfig = require "lspconfig"

local function organize_imports()
    local params = { command = "_typescript.organizeImports", arguments = { vim.api.nvim_buf_get_name(0) }, title = "" }
    vim.lsp.buf.execute_command(params)
end

local function on_attach(client)
    client.resolved_capabilities.document_formatting = false
    require "lsp_signature".on_attach()
end

lspconfig.tsserver.setup {
    on_attach = on_attach,
    commands = { OrganizeImports = { organize_imports, description = "Organize Imports" } }
}
