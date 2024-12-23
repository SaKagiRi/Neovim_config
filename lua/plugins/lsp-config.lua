return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			--vim.keymap.set("n", "J", vim.lsp.buf.hover, { desc = "hover"})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "definition" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "code_action" })
		end,
	},
}
