return {
	"nvimdev/indentmini.nvim",
	config = function()
		require("indentmini").setup({
			only_current = true,
		})
		vim.cmd.highlight("IndentLineCurrent guifg=#676767")
	end,
}
