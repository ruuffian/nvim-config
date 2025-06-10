Colors = {
  ['catppuccin'] = function()
    require 'catppuccin'.setup {
      flavour = 'frappe',
      background = {
        dark = 'frappe',
      },
      integrations = {
        treesitter = true,
        telescope = {
          enabled = true
        }
      }
    }
    vim.cmd.colorscheme('catppuccin')
  end,
  ['everforest-l'] = function()
    vim.g.everforest_background = 'hard'
    vim.opt.background = 'light'
    vim.cmd.colorscheme('everforest')
  end,
  ['everforest'] = function()
    vim.g.everforest_background = 'soft'
    vim.opt.background = 'dark'
    vim.cmd.colorscheme('everforest')
  end,
  ['edge-l'] = function()
    vim.g.edge_style = 'default'
    vim.opt.background = 'light'
    vim.cmd.colorscheme('edge')
  end,
  ['edge'] = function()
    vim.g.edge_style = 'default'
    vim.opt.background = 'dark'
    vim.cmd.colorscheme('edge')
  end,
}

function Pick(color)
  color = color or 'everforest'
  local fn = Colors[color]
  if fn ~= nil then
    fn()
  else
    Colors['everforest']()
  end

  --vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  --vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

Pick()
