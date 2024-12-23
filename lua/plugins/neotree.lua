return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		window = {
			width = 30,
			mappings = {
				["<space>"] = false, -- disable space until we figure out which-key disabling
				["[b"] = "prev_source",
				["]b"] = "next_source",
				F = vim.fn.exists('telescope') == 1 and "find_in_dir" or nil,  -- Check if telescope is available before assigning mapping
				-- F = utils.is_available "telescope.nvim" and "find_in_dir" or nil,
				O = "system_open",
				Y = "copy_selector",
				h = "parent_or_close",
				l = "child_or_open",
				o = "open",
			},
			fuzzy_finder_mappings = { -- define keymaps for filter popup window in fuzzy_finder_mode
				["<C-j>"] = "move_cursor_down",
				["<C-k>"] = "move_cursor_up",
			},
		},
	},
	config = function()
		vim.keymap.set('n', '<C-n>', ":Neotree toggle<CR>", { desc = "neotree"})
	end
}
