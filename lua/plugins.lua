return {
    {
        "lifepillar/vim-gruvbox8",
        lazy = false,
        priority = 1000,  -- Ensure it's loaded before other UI plugins
        config = function()
            vim.opt.background = "dark"
            vim.g.gruvbox_transp_bg = 1
            vim.cmd.colorscheme("gruvbox8_hard")
        end
    },
    {
        "ibhagwan/fzf-lua",
        config = function () 
            require('config.fzf')
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function () 
            require('config.treesitter')
        end,
        event = { 'BufReadPost', 'BufNewFile' },
    },
    {
        "neovim/nvim-lspconfig",
        config = function ()
            require('config.lsp')
        end
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lsp-signature-help",
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-nvim-lsp-document-symbol",
        },
        config = function()
          require "config.cmp"
        end,
        event = 'InsertEnter',
    },
    { "tpope/vim-fugitive" },
    {
        "ggandor/leap.nvim",
        dependencies = {
            "tpope/vim-repeat",
        },
        config = function()
            require('leap').create_default_mappings()
        end,
    },
}
