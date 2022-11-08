require "plugins.catppuccin"
require "plugins.cmp"
require "plugins.presence"
require "plugins.nvimtree"
require "plugins.alpha"
require "plugins.treesitter"
require "plugins.telescope"
require "plugins.feline"
-- lsp stuff
require "plugins.lsp.lspconfig"
require "plugins.lsp.mason"

-- setup luasnip
require("luasnip.loaders.from_vscode").lazy_load()

-- setup indentline
require("indent_blankline").setup {
	space_char_blankline = " ",
	char_highlight_list = {
        	"IndentBlanklineIndent1",
        	"IndentBlanklineIndent2",
        	"IndentBlanklineIndent3",
        	"IndentBlanklineIndent4",
        	"IndentBlanklineIndent5",
        	"IndentBlanklineIndent6",
    	},
}
