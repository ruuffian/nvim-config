local lsps = { 'lua_ls', 'bashls', 'ts_ls', 'tailwindcss', 'intelephense', 'jsonls' }

return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
  },
  config = function()
    local lsp_cap = require('cmp_nvim_lsp').default_capabilities()
    require('mason').setup {}
    require('mason-lspconfig').setup {
      ensure_installed = lsps,
      handlers = {
        function(server_name)
          require('lspconfig')[server_name].setup {
            capabilities = lsp_cap,
          }
        end,
        lua_ls = function()
          require('lspconfig').lua_ls.setup({
            capabilities = lsp_cap,
            settings = {
              Lua = {
                runtime = {
                  version = 'LuaJIT'
                },
                diagnostics = {
                  globals = { 'vim' },
                },
                workspace = {
                  library = {
                    vim.env.VIMRUNTIME,
                  }
                }
              }
            }
          })
        end
      },
    }
    local cmp = require('cmp')
    cmp.setup {
      sources = {
        { name = 'nvim_lsp' },
      },
      mapping = cmp.mapping.preset.insert({
        -- Enter key confirms completion item
        ['<CR>'] = cmp.mapping.confirm({ select = false }),

        -- Ctrl + space triggers completion menu
        ['<C-Space>'] = cmp.mapping.complete(),
      }),
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
    }
  end
}
