local installed = {
  'lua', 'php', 'phpdoc', 'vim', 'vimdoc', 'bash', 'javascript', 
  'typescript', 'java', 'html', 'php_only'
}

return {
  'nvim-treesitter/nvim-treesitter',
  build = 'TSUpdate',
  opts = {
    ensure_installed = installed,
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },
  config = function()
    require('nvim-treesitter.configs')
  end
}
