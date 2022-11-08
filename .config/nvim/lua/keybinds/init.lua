-- keybinds
function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', "<A-Left>", "<Cmd>tabprevious<CR>")
map("n", "<A-Right>", "<Cmd>tabnext<CR>")
map("n", "<A-w>", "<Cmd>tabclose<CR>")
map("n", "<A-t>", "<Cmd>tabnew<CR>")
map("n", "<A-1>", "1gt")
map("n", "<A-2>", "2gt")
map("n", "<A-3>", "3gt")
map("n", "<A-4>", "4gt")
map("n", "<A-5>", "5gt")
map("n", "<A-d>", "<Cmd>NvimTreeToggle<CR>")
map("n", "<C-Right>", "e")
