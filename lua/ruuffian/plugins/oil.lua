return {
  'stevearc/oil.nvim',
  dependencies = {
    'devicons',
  },
  config = function()
    require 'oil'.setup {
      columns = {
        'icon',
      },
      keymaps = {
        ["<C-m>"] = false,
        ["<C-p>"] = false,
        ["<C-c>"] = false,
        ["<C-h>"] = false,
        ["<C-j>"] = false,
        ["<C-k>"] = false,
        ["<C-l>"] = false,
      },
    }
    vim.keymap.set('n', '-', ':Oil<CR>', {})
  end
}
