local installed = {
  'lua', 'php', 'phpdoc', 'vim', 'vimdoc', 'bash', 'javascript', 
  'typescript', 'java', 'html', 'php_only', 'kotlin'
}

return {
  'nvim-treesitter/nvim-treesitter',
  build = 'TSUpdate',
  opts = {
    ensure_installed = installed,
    sync_install = false,
    auto_install = true,
    indent = {
      enable = true,
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },
}
