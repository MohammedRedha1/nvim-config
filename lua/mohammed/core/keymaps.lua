vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
keymap.set({ "v", "i" }, "jk", "<ESC>", { desc = "Go to normal mode" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Custom motions
keymap.set({ "n", "v" }, "<C-j>", "G", { desc = "Go to the end of the file", noremap = true, silent = true })
keymap.set("n", "y<C-j>", "yG", { desc = "Copy to the end of the file", noremap = true, silent = true })
keymap.set("n", "d<C-j>", "dG", { desc = "Delete to the end of the file", noremap = true, silent = true })

keymap.set({ "n", "v" }, "<C-k>", "gg", { desc = "Go to the top of the file", noremap = true, silent = true })
keymap.set("n", "y<C-k>", "ygg", { desc = "Copy to the top of the file", noremap = true, silent = true })
keymap.set("n", "d<C-k>", "dgg", { desc = "Delete to the top of the file", noremap = true, silent = true })

keymap.set({ "n", "v" }, "<C-l>", "$", { desc = "Go to the end of the current line", noremap = true, silent = true })
keymap.set("n", "y<C-l>", "y$", { desc = "Copy to the end of the current line", noremap = true, silent = true })
keymap.set("n", "d<C-l>", "d$", { desc = "Delete to the end of the current line", noremap = true, silent = true })

keymap.set({ "n", "v" }, "<C-h>", "0", { desc = "Go to the start of the current line", noremap = true, silent = true })
keymap.set("n", "y<C-h>", "y0", { desc = "Copy to the start of the current line", noremap = true, silent = true })
keymap.set("n", "d<C-h>", "d0", { desc = "Delete to the start of the current line", noremap = true, silent = true })

keymap.set({ "n", "v" }, "<C-d>", "<C-d>zz") -- center the cursor automatically
keymap.set({ "n", "v" }, "<C-u>", "<C-u>zz") -- center the cursor automatically
-- Custom commands for speed
keymap.set("n", "<C-s>", ":w<CR>") -- save the file
keymap.set("i", "<C-s>", "<Esc>:w<CR>a")

-- Fix original commands
keymap.set({ "n", "i", "v" }, "<C-z>", "")
