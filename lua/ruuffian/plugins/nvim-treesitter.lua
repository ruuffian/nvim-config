local installed = {
  'lua', 'php', 'phpdoc', 'vim', 'vimdoc', 'bash', 'javascript', 
  'typescript', 'java', 'html', 'php_only'
}

return {
  'nvim-treesitter/nvim-treesitter',
  build = 'TSUpdate',
  config = function()
    local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
    parser_config.blade = {
      install_info = {
        url = 'https://github.com/EmranMR/tree-sitter-blade',
        files = { 'src/parser.c' },
        branch = 'main',
      },
      filetype = 'blade',
    }
    vim.filetype.add({
      pattern = {
        ['.*%.blade%.php'] = 'blade',
      },
    })

    require('nvim-treesitter.configs').setup({
      ensure_installed = installed,
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    })
  end
}
