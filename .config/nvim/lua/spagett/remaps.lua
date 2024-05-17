vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>h", ":NvimTreeToggle<CR>", { silent = true })

vim.keymap.set("n", "<c-h>", ":wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>", { silent = true })
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>", { silent = true })

vim.keymap.set('t', '<Esc>', "<C-\\><C-n><C-w>h", { silent = true })

vim.keymap.set('n', '<leader>o', ":w | !rustfmt %<CR><CR>", { silent = true })
