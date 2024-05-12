vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Custom motions
keymap.set({ "n", "v" }, "ee", "G", { desc = "Go to the end of the file" })
keymap.set("n", "yee", "yG", { desc = "Copy to the end of the file" })
keymap.set("n", "dee", "dG", { desc = "Delete to the end of the file" })

keymap.set({ "n", "v" }, "tt", "gg", { desc = "Go to the top of the file" })
keymap.set("n", "ytt", "ygg", { desc = "Copy to the top of the file" })
keymap.set("n", "dtt", "dgg", { desc = "Delete to the top of the file" })

keymap.set({ "n", "v" }, "<leader>le", "$", { desc = "Go to the end of the current line" })
keymap.set("n", "y<leader>le", "y$", { desc = "Copy to the end of the current line" })
keymap.set("n", "d<leader>le", "d$", { desc = "Delete to the end of the current line" })

keymap.set({ "n", "v" }, "<leader>ls", "0", { desc = "Go to the start of the current line" })
keymap.set("n", "y<leader>ls", "y0", { desc = "Copy to the start of the current line" })
keymap.set("n", "d<leader>ls", "d0", { desc = "Delete to the start of the current line" })

keymap.set({ "n", "v" }, "<C-d>", "<C-d>zz") -- center th cursor automatically
keymap.set({ "n", "v" }, "<C-u>", "<C-u>zz") -- center th cursor automatically
-- Custom commands for speed
keymap.set("n", "<C-s>", ":w<CR>") -- save the file
