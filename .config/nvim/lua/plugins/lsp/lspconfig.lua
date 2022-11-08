-- LSP Config

-- Python
require'lspconfig'.pyright.setup{on_attach=require'cmp'.on_attach}

-- sumneko_lua
require'lspconfig'.sumneko_lua.setup{on_attach=require'cmp'.on_attach}

-- rust_analyzer
require'lspconfig'.rust_analyzer.setup{on_attach=require'cmp'.on_attach}
