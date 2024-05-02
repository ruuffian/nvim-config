return {
  'nvim-telescope/telescope.nvim',

  depencies = {
    'plenary',
    'devicons',
  },

  config = function()
    local builtin = require('telescope.builtin')
    local set = vim.keymap.set
    -- Basic Nav
    set('n', '<leader>pf', builtin.find_files, {})
    set('n', '<C-p>', builtin.git_files, {})
    set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input('grep ')});
    end, {})
    set('n', '<C-s>', builtin.live_grep, {})
  end
}
