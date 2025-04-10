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
    }
    vim.keymap.set('n', '-', ':Oil<CR>', {})
  end
}
