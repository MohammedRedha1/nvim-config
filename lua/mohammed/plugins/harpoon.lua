return {
	"ThePrimeagen/harpoon",
	config = function()
		require("harpoon").setup()
		local keymap = vim.keymap
		keymap.set(
			"n",
			"<leader>hm",
			':lua require("harpoon.ui").toggle_quick_menu()<CR>',
			{ desc = "toggle harpoon menu" }
		)
		keymap.set("n", "<leader>ha", ':lua require("harpoon.mark").add_file()<CR>', { desc = "harpoon - add a file" })
		keymap.set("n", "<leader>j", ':lua require("harpoon.ui").nav_next()<CR>', { desc = "harpoon - next" })
		keymap.set("n", "<leader>k", ':lua require("harpoon.ui").nav_prev()<CR>', { desc = "harpoon - previous" })
	end,
}
