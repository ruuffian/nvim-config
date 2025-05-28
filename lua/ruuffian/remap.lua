local set = vim.keymap.set
-- NetRW
--set('n', '<leader>pv', ':Ex<CR>', {})

-- Panel Navigation
set('n', '<C-h>', '<C-w>h', {})
set('n', '<C-j>', '<C-w>j', {})
set('n', '<C-k>', '<C-w>k', {})
set('n', '<C-l>', '<C-w>l', {})

set('n', '<C-p>', ':vsplit<CR>', {})
set('n', '<C-n>', ':split<CR>', {})

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
local vset = vim.keymap.set
vset('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
vset('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
vset('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(e)
    local opts = { buffer = e.buf }
    vset('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vset('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vset('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vset('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vset('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vset('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vset('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vset('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vset({ 'n', 'x' }, '<leader>f',
      function()
        require('conform').format { async = true, lsp_fallback = true }
      end,
      opts)
    vset('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  end
})
