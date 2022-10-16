--Remap space as leader key
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "

-- map strg + c to esc to automatically toggle relative linenumbers
vim.keymap.set("i", "<C-c>", "<esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-c>", "<esc>", { noremap = true, silent = true })

-- deactivate arrow keys in normal mode
vim.keymap.set("n", "<up>", "<nop>", { noremap = true, silent = true })
vim.keymap.set("n", "<left>", "<nop>", { noremap = true, silent = true })
vim.keymap.set("n", "<right>", "<nop>", { noremap = true, silent = true })
vim.keymap.set("n", "<down>", "<nop>", { noremap = true, silent = true })

-- cycle through buffers
vim.keymap.set("n", "[b", ":bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "]b", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "[B", ":bfirst<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "]B", ":blast<CR>", { noremap = true, silent = true })
-- cycle through tabs
vim.keymap.set("n", "[t", ":tabprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "]t", ":tabnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "[T", ":tabfirst<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "]T", ":tablast<CR>", { noremap = true, silent = true })
