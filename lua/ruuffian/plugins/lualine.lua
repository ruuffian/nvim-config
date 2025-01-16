return {
  'nvim-lualine/lualine.nvim',
  name = 'lualine',
  dependencies = {
    'devicons',
  },
  config = function()
    require('lualine').setup()
  end
}
