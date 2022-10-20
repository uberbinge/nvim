--Remap space as leader key
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "

-- quality of life adjustments

-- save to file with strg + s
vim.keymap.set("n", "<C-s>", ":w<cr>", { noremap = true })
-- Don't copy the replaced text after pasting.
vim.keymap.set("v", "p", '"_dP', { noremap = true, silent = true })
-- With this you can use > < multiple time for changing indent when you visual selected text.
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

-- greatest remap ever
-- speedy mode
for _, mode in ipairs { "v", "n" } do
	vim.keymap.set(mode, "<S-j>", "5j", { noremap = true, silent = true })
	vim.keymap.set(mode, "<S-k>", "5k", { noremap = true, silent = true })
end
-- fix the remove linebreak key combo e.g. shift + J -> strg + J
vim.keymap.set("v", "<C-j>", "J", { noremap = true, silent = true })
vim.keymap.set("n", "<S-L>", ":bnext<cr>", { noremap = true })
vim.keymap.set("n", "<S-H>", ":bprevious<cr>", { noremap = true })

-- map strg + c to esc to automatically toggle relative line numbers
vim.keymap.set("i", "<C-c>", "<esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-c>", ":nohlsearch<cr><esc>", { noremap = true, silent = true })
vim.keymap.set("v", "<C-c>", "<esc>", { noremap = true, silent = true })
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
