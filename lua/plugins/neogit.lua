return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
		"nvim-telescope/telescope.nvim",
		"ibhagwan/fzf-lua",
		"echasnovski/mini.pick",
	},
	config = function ()
		vim.keymap.set("n", '<C-g>', ":Neogit<CR>", { desc = "Neogit" })
	end,
}
