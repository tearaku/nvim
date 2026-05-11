local lspconfig = require 'lspconfig'

local client_capabilities = require('cmp_nvim_lsp').default_capabilities()

local servers = {
  rust_analyzer = {
    settings = {
      ["rust-analyzer"] = {
        cargo = {
          buildScripts = {
            enable = true,
          },
          procMacro = {
            enable = true,
          },
          loadOutDirsFromCheck = {
            enable = true,
          },
        },
      },
    },
  },
  gopls = {
    cmd = {"gopls", "serve"},
    filetypes = {"go", "gomod"},
    root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
          ST1000 = false, -- "at least one file... should have a package comment"
          ST1003 = false, -- "struct field RedisDb should be RedisDB"
          ST1020 = false, -- "comment on exported method... should be of the form"
          ST1021 = false, -- (Additional check for type comments)
          ST1022 = false, -- (Additional check for variable comments)
        },
        staticcheck = true,
        gofumpt = true,
      },
    },
  },
  ts_ls = {},
  pyright = {
    settings = {
      pyright = {
        -- Using Ruff's import organizer
        disableOrganizeImports = true,
      },
      python = {
        analysis = {
          -- Ignore all files to use Ruff for linting
          -- Yeah but now pyright simply stops type-checking altogether, nope...
          --ignore = { '*' },
        },
      },
    },
  },
  ruff = {
    init_options = {
      settings = {
        loglevel = 'debug',
      },
    },
  },
  html = {
    filetypes = { "html", "htmldjango" }
  },
}

for server, config in pairs(servers) do
  config.capabilities = vim.tbl_deep_extend('keep', config.capabilities or {}, client_capabilities)
  lspconfig[server].setup(config)
end
