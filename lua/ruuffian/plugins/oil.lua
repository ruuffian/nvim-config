return {
  'stevearc/oil.nvim',

  dependencies = {
    'devicons',
  },

  config = function()
    require('oil').setup({
      --default_file_explorer = false,
      columns = {
        'icon',
      },
    })
    vim.keymap.set('n', '-', ':Oil<CR>', {})
  end
}
