local installed = {
  'lua', 'php', 'phpdoc', 'vim', 'vimdoc', 'bash', 'javascript',
  'typescript', 'java', 'html', 'php_only', 'kotlin'
}

return {
  'nvim-treesitter/nvim-treesitter',
  build = 'TSUpdate',
  config = function()
    local configs = require 'nvim-treesitter.configs'
    configs.setup {
      ensure_installed = installed,
      sync_install = false,
      auto_install = true,
      indent = {
        enable = true,
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
      },
    }
  end
}
