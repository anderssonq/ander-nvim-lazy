return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		-- Set up nvim-treesitter
		require("nvim-treesitter.configs").setup({
			auto_install = true,
			ensure_installed = { "lua", "vim", "typescript", "vue", "javascript", "html", "css" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
