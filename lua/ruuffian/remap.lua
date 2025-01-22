local set = vim.api.nvim_set_keymap
-- NetRW
--set('n', '<leader>pv', ':Ex<CR>', {})

-- Panel Navigation
set('n', '<C-h>', '<C-w>h', {})
set('n', '<C-j>', '<C-w>j', {})
set('n', '<C-k>', '<C-w>k', {})
set('n', '<C-l>', '<C-w>l', {})

-- Moving lines
set('v', 'J', ":m '>+1<CR>gv=gv", {})
set('v', 'K', ":m '<-2<CR>gv=gv", {})

-- Search stays in center
set('n', 'n', 'nzzzv', {})
set('n', 'N', 'Nzzzv', {})

-- Paste into highlight without destroying copy buffer
set('x', '<leader>p', '\"_dP', {})

-- Copy into system clipboard
set('n', '<leader>y', '\"+y', {})
set('v', '<leader>y', '\"+y', {})

-- Vertical edit
set('i', '<C-c>', '<Esc>', {})

-- Random stuff
set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

-- LSP

vim.api.nvim_create_autocmd('LspAttach', {
  group = ruuffian,
  callback = function(e)
    local opts = { buffer = e.buf }
  end
})
