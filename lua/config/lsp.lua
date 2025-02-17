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
                },
                staticcheck = true,
                gofumpt = true,
            },
        },
    },
    --tsserver = {},
    ts_ls = {},
    html = {
        filetypes = { "html", "htmldjango" }
    },
}

for server, config in pairs(servers) do
    config.capabilities = vim.tbl_deep_extend('keep', config.capabilities or {}, client_capabilities)
    lspconfig[server].setup(config)
end
