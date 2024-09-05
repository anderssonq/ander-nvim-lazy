return {{"nvim-lua/plenary.nvim"}, {
    "gaborvecsei/memento.nvim",
    config = function()
        local memento = require("memento")

        function MementoToggle()
            memento.toggle()
        end

        vim.api.nvim_set_keymap("n", "<leader>m", ":lua MementoToggle()<CR>", {
            noremap = true,
            silent = true
        })
    end
}}
