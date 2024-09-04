-- Set up mapleader and maplocalleader early
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Set vim options
vim.cmd([[
  set relativenumber
  set foldmethod=manual
  set mouse=a
  set number
  set expandtab
  set shiftwidth=2
  set softtabstop=2
  set tabstop=2
  set fileencoding=utf-8
  set splitbelow
  set splitright
  set linebreak
  set wrap
  set clipboard+=unnamedplus
]])

-- Set up which-key
vim.opt.termguicolors = true
vim.keymap.set('n', '<C-U>', function()
  vim.cmd('undo')
  vim.notify("Undo ➡️", vim.log.levels.INFO)
end)

vim.keymap.set('n', '<C-R>', function()
  vim.cmd('redo')
  vim.notify("Redo ⬅️", vim.log.levels.INFO)
end)

vim.keymap.set('n', '<C-Y>', function()
  vim.cmd('write')
  vim.notify("File saved 💾, remember Easy To Change (ETC) principle!! 📚", vim.log.levels.INFO)
end)

vim.keymap.set('v', '<leader>zf', ":'<,'>fold<CR>", { desc = "Fold Selected Lines" })
vim.keymap.set('n', '<leader>za', "za", { desc = "Toggle Fold" })
vim.keymap.set('n', '<leader>/', function()
  local line = vim.api.nvim_get_current_line()
  if vim.startswith(line, "//") then
    -- Descomentar la línea si ya tiene un comentario
    vim.cmd('normal! ^xx')
  else
    -- Comentar la línea si no está comentada
    vim.cmd('normal! I// ')
  end
end, { desc = "Toggle Comment Line" })
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize +2<CR>', { noremap = true, silent = true })

