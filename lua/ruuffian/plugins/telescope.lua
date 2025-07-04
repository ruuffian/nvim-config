return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'plenary',
    'devicons',
  },
  config = function()
    local builtin = require 'telescope.builtin'
    local set = vim.keymap.set
    -- Basic Nav
    set('n', '<leader>pf', builtin.find_files, {})
    set('n', '<leader>ps', function()
      builtin.grep_string { search = vim.fn.input '> ' }
    end, {})
    set('n', '<C-f>', builtin.live_grep, {})
  end
}
