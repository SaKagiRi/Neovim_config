return {
	{
		"nvim-telescope/telescope.nvim";
		config = function()
			require('telescope').setup{
				defaults = {
					mappings = {
						i = {
							["<C-h>"] = "which_key"
						}
					}
				},
			}
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
			vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
		end
	},
	{
		'nvim-telescope/telescope-ui-select.nvim';
		config = function()
			require("telescope").setup ({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {
							-- even more opts
						}
					}
				}
			})
			require("telescope").load_extension("ui-select")
		end
	},
}
