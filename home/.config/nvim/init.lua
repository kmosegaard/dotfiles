require'user.plugins'
require'user.lsp'
require'user.cmp'
require'user.tree'

vim.cmd 'colorscheme sonokai'

vim.opt.encoding = 'utf-8'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.completeopt = 'menuone,noinsert,noselect'

local map = vim.api.nvim_set_keymap
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

options = { noremap = true }
map('n', '<leader>dd', ':NvimTreeFindFile<cr>', {})
map('n', '<leader>da', ':NvimTreeToggle<cr>', {})

map('n', '<leader>ff', ':lua require("telescope.builtin").find_files()<cr>', options)
map('n', '<leader>fd', ':lua require("telescope.builtin").git_files()<cr>', options)
map('n', '<leader>fg', ':lua require("telescope.builtin").live_grep()<cr>', options)
map('n', '<leader>fb', ':lua require("telescope.builtin").buffers()<cr>', options)
map('n', '<leader>fh', ':lua require("telescope.builtin").help_tags()<cr>', options)
map('n', '<leader>f<leader>', ':lua require("telescope.builtin").resume()<cr>', options)

