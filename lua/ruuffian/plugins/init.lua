return {
  {
    'nvim-lua/plenary.nvim',
    name = 'plenary',
  },
  {
    'nvim-tree/nvim-web-devicons',
    name = 'devicons',
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'devicons',
    },
    opts = {},
  }
}
