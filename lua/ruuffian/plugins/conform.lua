return {
  'stevearc/conform.nvim',
  config = function()
    require('conform').setup({
      formatters_by_ft = {
        nix = { 'alejandra' },
        python = { 'autopep8' },
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        json = { 'prettier' },
        yaml = { 'prettier' },
        kotlin = { 'ktfmt' },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = 'fallback'
      },
    })
  end
}
