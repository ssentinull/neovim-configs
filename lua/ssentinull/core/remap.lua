-- set space bar as prefix
vim.g.mapleader = " "

-- return to netrw screen
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- on insert mode, press "jk" to go back to normal mode
vim.keymap.set("i", "jk", "<ESC>")

-- on visual mode, press "J" or "K" to move selected lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- on normal mode, press "J" to remove new lines on current cursor end of line
vim.keymap.set("n", "J", "mzJ`z")

-- on normal mode, press "ctrl + d/u" to recenter cursor to the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- on normal mode, press "x" to delete character on not save character to buffer
vim.keymap.set("n", "x", '"_x')

-- on normal mode, press these to split windows
vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>se", "<C-w>=")
vim.keymap.set("n", "<leader>sx", ":close<CR>")
vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- on normal mode, press these to manage tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>")
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>")
vim.keymap.set("n", "<leader>tn", ":tabn<CR>")
vim.keymap.set("n", "<leader>tp", ":tabp<CR>")

-- on normal mode, press space + e to open & close file explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- keymaps for telescope
vim.keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>ps", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>pw", "<cmd>Telescope grep_string<cr>")
vim.keymap.set("n", "<leader>pb", "<cmd>Telescope buffers<cr>")

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux new tmux-sessionizer<CR>")
