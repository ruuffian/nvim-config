vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

--return {
--  {
--    'folke/tokyonight.nvim',
--    lazy = false,
--    priority = 1000,
--    opts = {
--      style = 'storm',
--      transparent = true,
--    },
--    config = function()
--      require('tokyonight')
--      vim.cmd('colorscheme tokyonight')
--    end
--  }
--}

return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    config = function()
      require('catppuccin').setup({
        flavour = 'frappe',
        background = {
          dark = "frappe"
        },
        integrations = {
          treesitter = true,
          telescope = {
            enabled = true
          }
        }
      })
      vim.cmd('colorscheme catppuccin')
    end
  }
}
