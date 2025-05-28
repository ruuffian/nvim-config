local installed = {
  'lua', 'php', 'phpdoc', 'vim', 'vimdoc', 'bash', 'javascript',
  'typescript', 'java', 'html', 'php_only', 'kotlin', 'c', 'ocaml', 'cpp'
}

return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    -- Blade Templates
    vim.filetype.add({
      pattern = {
        ['.*%.blade%.php'] = 'blade',
      },
    })
    local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
    parser_config.blade = {
      install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = { "src/parser.c" },
        branch = "main",
      },
      filetype = "blade"
    }

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
