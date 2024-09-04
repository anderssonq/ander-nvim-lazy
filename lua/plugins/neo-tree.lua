return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		-- Set up neo-tree
		require("neo-tree").setup({
			filesystem = {
				window = {
					width = 30, -- Percentage of screen width, you can adjust this value
          position = "left",
				},
			},
		})

		-- Toggle Neo-tree with <leader>e
		vim.keymap.set("n", "<leader>e", function()
			vim.cmd("Neotree toggle left")
		end)
	end,
}
