vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      style = 'moon',
      transparent = true,
    },
    config = function()
      require('tokyonight')
      vim.cmd('colorscheme tokyonight')
    end
  }
}
