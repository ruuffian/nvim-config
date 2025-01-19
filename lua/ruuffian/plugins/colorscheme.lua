vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

return {
  {
    'catppuccin/nvim',
    name = 'catpuccin',
    lazy = false,
    priority = 1000,
    config = function()
      require 'catppuccin'.setup {
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
      }
      vim.cmd 'colorscheme catppuccin'
    end
  }
}
