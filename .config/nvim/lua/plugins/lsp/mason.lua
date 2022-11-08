-- Import mason
require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup({
    ensure_installed = { "pyright", "sumneko_lua", "rust_analyzer" }
})
