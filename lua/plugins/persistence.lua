return {
	"folke/persistence.nvim",
	event = "BufReadPre", -- this will only start session saving when an actual file was opened
	opts = {
		-- add any custom options here
	},
	config = function()
		require("persistence").setup({
			dir = vim.fn.expand(vim.fn.stdpath("config") .. "/session/"),
			options = { "buffers", "curdir", "tabpages", "winsize" },
		})

		-- Asegúrate de que which-key esté cargado
		local wk = require("which-key")

		-- Define los mapeos según la nueva especificación con notificaciones
		wk.add({
			{ "<leader>S", group = "Session" },

			{
				"<leader>SQ",
				function()
					vim.cmd("lua require('persistence').stop()")
					vim.notify("Session stopped, quit without saving. 🛑", vim.log.levels.INFO)
				end,
				desc = "Quit without saving session",
			},

			{
				"<leader>Sc",
				function()
					vim.cmd("lua require('persistence').load()")
					vim.notify("Last session restored for current directory. 🔥", vim.log.levels.INFO)
				end,
				desc = "Restore last session for current dir",
			},

			{
				"<leader>Sl",
				function()
					vim.cmd("lua require('persistence').load({ last = true })")
					vim.notify("Last session restored. 🔥", vim.log.levels.INFO)
				end,
				desc = "Restore last session",
			},
		})
	end,
}
