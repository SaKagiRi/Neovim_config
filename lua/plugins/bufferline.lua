return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function ()
		vim.opt.termguicolors = true
		require("bufferline").setup{
			options = {
				separator_style = "slope",
				always_show_bufferline = true,
				show_buffer_icons = true,
				show_buffer_close_icons = true,
				show_tab_indicators = true,
				line_height = 3,
				max_name_length = 30,
				max_prefix_length = 15,
				tab_size = 30,
				offsets = {
					{
						-- filetype = "NvimTree",
						filetype = "neo-tree",
						text = "File Explorer",
						text_align = "center",
						highlight = "Directory",
						separator = true,
						-- padding = 1,
					}
				}
			}
		}
	end
}
