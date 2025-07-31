--[[
  Configured LSPs:
    - clangd
    - lua-language-server
--]]
return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
  },
  config = function()
    local lspconfig = require 'lspconfig'
    local lsp_cap = require 'cmp_nvim_lsp'.default_capabilities()
    lspconfig.ansiblels.setup {
      capabilities = lsp_cap,
      filetypes = {
        "yaml",
      },
      settings = {
        ansible = {
          ansible = {
            path = "ansible",
            useFullyQualifiedCollectionNames = true
          },
          ansibleLint = {
            enabled = true,
            path = "ansible-lint"
          },
          executionEnvironment = {
            enabled = false
          },
          python = {
            interpreterPath = "python"
          },
          completion = {
            provideRedirectModules = true,
            provideModuleOptionAliases = true
          }
        },
      },
    }
    lspconfig.nixd.setup {
      capabilities = lsp_cap,
    }
    lspconfig.yamlls.setup {
      capabilities = lsp_cap,
      settings = {
        yaml = { keyOrdering = false },
      },
    }
    lspconfig.clangd.setup {
      capabilities = lsp_cap,
    }
    lspconfig.lua_ls.setup {
      capabilities = lsp_cap,
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
        },
      },
    }
    lspconfig.ocamllsp.setup {
      capabilities = lsp_cap,
    }
    lspconfig.ts_ls.setup {
      capabilities = lsp_cap,
    }
    lspconfig.basedpyright.setup {
      capabilities = lsp_cap,
      settings = {
        basedpyright = {
          analysis = {
            diagnosticMode = 'workspace',
          },
          -- Using Ruff's import organizer
          disableOrganizeImports = true,
        },
      },
    }
    lspconfig.ruff.setup {
      capabilities = lsp_cap,
    }
    lspconfig.bashls.setup {
      capabilities = lsp_cap,
    }
    lspconfig.gopls.setup {
      capabilities = lsp_cap,
    }
    local cmp = require('cmp')
    cmp.setup {
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      view = {
        entries = {
          name = 'custom',
          selection_order = 'near_cursor',
          follow_cursor = 'true',
        },
      },
      sources = {
        { name = 'luasnip',  group_index = 1 },
        { name = 'nvim_lsp', group_index = 2 },
      },
      mapping = {
        ["<CR>"] = cmp.mapping(
          cmp.mapping.confirm({
            select = true,
            behavior = cmp.ConfirmBehavior.Insert,
          }),
          { "i", "c" }
        ),
        ["<C-n>"] = cmp.mapping.select_next_item({
          behavior = cmp.ConfirmBehavior.Insert,
        }),
        ["<C-p>"] = cmp.mapping.select_prev_item({
          behavior = cmp.ConfirmBehavior.Insert,
        }),
        ["<C-b>"] = cmp.mapping.scroll_docs(-5),
        ["<C-f>"] = cmp.mapping.scroll_docs(5),
        ["<C-q>"] = cmp.mapping.abort(),
      },
    }
  end
}
