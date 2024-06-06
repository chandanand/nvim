local set = vim.keymap.set

set('n', '<leader>q', '<CMD>q<CR>')
set('n', '<leader>x', '<CMD>.lua<CR>', { desc = "Execute the current line." })

set('n', '<leader>w', '<CMD>w<CR>')

set('v', 'J', ":m '>+1<CR>gv=gv")
set('v', 'K', ":m '<-2<CR>gv=gv")

set('n', 'Y', 'yg$')
set('n', 'J', 'mzJ`z')
set('n', '<C-d>', '<C-d>zz')
set('n', '<C-u>', '<C-u>zz')
set('n', 'n', 'nzzzv')
set('n', 'N', 'Nzzzv')

set('n', '<C-h>', '<C-w>h')
set('n', '<C-l>', '<C-w>l')
set('n', '<C-j>', '<C-w>j')
set('n', '<C-k>', '<C-w>k')

set("n", "<CR>", function()
  if vim.opt.hlsearch.get() then
    vim.cmd.nohl()
    return ""
  else
    return "<CR>"
  end
end, { expr = true })

set("n", "<left>", "gT")
set("n", "<right>", "gt")
